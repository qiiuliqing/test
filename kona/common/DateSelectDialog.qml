import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.15
import QtQuick.Controls.Styles 1.4

//日期范围选择
//（使用Control1的日历实现）
Dialog {
    id:control
    implicitWidth: 590
    implicitHeight: 590

    modal: true /* 非模态对话框 */
    closePolicy: Popup.NoAutoClose   /* 不自动关闭 */

    /* 背景 */
    background: Rectangle {
        color: "#ffffff"
        border.color: "#231f20"
        border.width: 0
        radius: 0
    }


    property var selectArray: new Array
    property string beginDate


    function daySelect(date){
        for(var i = 0; i < selectArray.length; i++)
        {
            if (selectArray[i] === date)
            {
                return(true);
            }
        }
        return(false);
    }

    ColumnLayout {
        spacing: 0
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.leftMargin: 1
        anchors.rightMargin: 1
        Rectangle {
            height: 94
            width: 582
            RowLayout {
                anchors.fill: parent

                Rectangle {
                    id: rect1
                    width: 290
                    height: 94

                    Text {
                        id: fromLab
                        width: 120
                        height: 18
                        font.family: mediumFont.name
                        font.pixelSize: 16
                        color: "#c4c4c4"
                        text: "From"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 25
                        horizontalAlignment: Text.AlignHCenter
                    }
                    Text {
                        id: startDate
                        width: 120
                        height: 20
                        font.family: mediumFont.name
                        font.pixelSize: 24
                        color: "#7a7b7b"
                        text: "2023.01.30"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: fromLab.bottom
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            leftNav.visible = true
                            rightNav.visible = false
                            control.selectArray = []
                        }
                    }
               }



                Rectangle {
                    color: "#e2e2e2"
                    width: 2
                    height: 44
                }

                Rectangle {
                    width: 285
                    height: 94

                    Text {
                        id: fromLab2
                        width: 120
                        height: 18
                        font.family: mediumFont.name
                        font.pixelSize: 16
                        color: "#c4c4c4"
                        text: "To"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.topMargin: 25
                        horizontalAlignment: Text.AlignHCenter
                    }
                    Text {
                        id: endDate
                        width: 120
                        height: 20
                        font.family: mediumFont.name
                        font.pixelSize: 24
                        color: "#7a7b7b"
                        text: "2023.02.07"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: fromLab2.bottom
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            leftNav.visible = false
                            rightNav.visible = true
                        }
                    }
                }
            }

            Rectangle {
                id: navRect
                color: "#e2e2e2"
                width: parent.width - 100
                height:3
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: 55

                Rectangle {
                    id: leftNav
                    color: "#0075bd"
                    width: parent.width / 2 - 3
                    height:3
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                }

                Rectangle {
                    id: rightNav
                    color: "#0075bd"
                    width: parent.width / 2 - 3
                    height:3
                    anchors.bottom: parent.bottom
                    anchors.right: parent.right
                    visible: false
                }
            }

            Text {
                id: rangeTip
                visible: false
                anchors.bottom: navRect.bottom
                anchors.bottomMargin: 8
                anchors.horizontalCenter: parent.horizontalCenter
                width: 205
                height: 15
                font.family: mediumFont.name
                font.pixelSize: 14
                color: "#ed1c24"
                text: "The selected dates are out of range"
            }
        }


        Rectangle {
            width: control.width -2
            height: 350

            RowLayout {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 0
                ImageButton {
                    id:preBtn
                    width: 13
                    height: 27
                    imagePath: "qrc:/images/arrow-left.png"
                    onClicked:{
                        calendar.showPreviousMonth()
                    }
                }

                Calendar{
                    id:calendar
                    implicitWidth: 470
                    implicitHeight: 350
                    locale: Qt.locale("en_AU")

                    frameVisible: false
                    weekNumbersVisible: false;
                    dayOfWeekFormat:Locale.ShortFormat;
                    selectedDate: new Date();
                    focus: true;

                    onClicked: {
                        if (leftNav.visible) {
                            control.beginDate = Qt.formatDate(selectedDate,"d")
                            startDate.text = Qt.formatDate(selectedDate,"yyyy.MM.dd")
                        } else {
                            var start = Number(control.beginDate)
                            var end = Number(Qt.formatDate(selectedDate,"d"))
                            if ((end - start) > 6) {
                                rangeTip.visible = true
                            } else {
                                rangeTip.visible = false
                            }


                            if (end > start) {
                                var array = new Array
                                for (var i = start; i < end; ++i) {
                                    array.push(i.toString())
                                }

                                control.selectArray = array
                            }

                            endDate.text = Qt.formatDate(selectedDate,"yyyy.MM.dd")
                        }
                    }


                    style: CalendarStyle {
                        gridVisible: false;
                        navigationBar:Item {
                            height: 75
                            Rectangle{
                                anchors.fill: parent;
                                color: calendar.isLargerValue? "#F7F7F7" : "#FFFFFF";

                                //去事件穿透
                                MouseArea{
                                    anchors.fill: parent;
                                    onPressed:{
                                         mouse.accepted = true
                                    }
                                }

                                Text{
                                    id:dateText;
                                    anchors.centerIn: parent;
                                    color: "#7b7a7a";
                                    font{family: mediumFont.name; pixelSize: 24}
                                    text:{
                                        var monthArray = new Array
                                        monthArray[0] = "Jan"
                                        monthArray[1] = "Feb"
                                        monthArray[2] = "Mar"
                                        monthArray[3] = "Apr"
                                        monthArray[4] = "May"
                                        monthArray[5] = "Jun"
                                        monthArray[6] = "Jul"
                                        monthArray[7] = "Aug"
                                        monthArray[8] = "Sept"
                                        monthArray[9] = "Oct"
                                        monthArray[10] = "Nov"
                                        monthArray[11] = "Dec"
                                        var str = monthArray[control.visibleMonth] + " " + control.visibleYear;
                                        return str;
                                    }
                                }

                            }
                            //长度不足2 补零
                            function fillZero(value) {
                                return value.toString().length < 2 ? ('0' + value) : value
                            }

                        }

                        dayOfWeekDelegate:Item {
                            id:weekDelegate;
                            height: 30
                            width: 50
                            Rectangle{
                                anchors.fill: parent;
                                color: calendar.isLargerValue?"#F7F7F7":"#FFFFFF";
                                anchors.margins: -1;
                                //去事件穿透
                                MouseArea{
                                    anchors.fill: parent;
                                    onPressed:{
                                         mouse.accepted = true
                                    }
                                }
                                Text{
                                    id:weekDay
                                    anchors.centerIn: parent;
                                    color: "#c4c4c4"
                                    font{ family: mediumFont.name; pixelSize: 16;}
                                    text: control.__locale.dayName(styleData.dayOfWeek, control.dayOfWeekFormat);
                                }
                            }
                        }
                        dayDelegate: Rectangle {
                            property bool dayIsSelect: daySelect(styleData.date.getDate().toString())

                            gradient: Gradient {
                                GradientStop {
                                    position: 0.00
                                    color: styleData.selected || dayIsSelect ? "#0075bd" : "transparent";
                                }
                            }

                            Label {
                                text: styleData.date.getDate()
                                color: styleData.selected || dayIsSelect ? "#ffffff" : "#7b7f7f";
                                font{ family: mediumFont.name; pixelSize: 24;}
                                anchors.centerIn: parent
                            }
                        }
                    }
                }

                ImageButton {
                    id:nextBtn
                    width: 13
                    height: 27
                    imagePath: "qrc:/images/arrow-right.png"
                    onClicked:{
                        calendar.showNextMonth()
                    }
                }
            }
        }



        Rectangle {
            width: control.width -2
            height: 80
            Layout.topMargin: 25
            RowLayout {
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle {
                    width: 230
                    height: 80
                    color: "#7A7979"

                    RowLayout {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 10
                        Image {
                            anchors.centerIn: parent.Center
                            source: "qrc:/images/x-white.png"
                            fillMode:Image.Stretch
                        }

                        Text {
                            font.family: mediumFont.name
                            font.pixelSize: 16
                            width: 80
                            height: 25
                            text:"Cancel"
                            color: "#ffffff"
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            control.close()
                        }
                    }
                }

                Rectangle {
                    width: 230
                    height: 80
                    color: "#0075BC"

                    RowLayout {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 10
                        Image {
                            anchors.centerIn: parent.Center
                            source: "qrc:/images/keyboard-check.png"
                            fillMode:Image.Stretch
                        }

                        Text {
                            font.family: mediumFont.name
                            font.pixelSize: 16
                            width: 80
                            height: 25
                            text:"Save"
                            color: "#ffffff"
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            control.close()
                        }
                    }
                }
            }
        }
    }
}
