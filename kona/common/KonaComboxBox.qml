import QtQuick 2.0
import QtQuick.Controls 2.14
import QtGraphicalEffects 1.12

Rectangle {
    id:comboBox
    property alias currentIndex: listviewer.currentIndex  //把currentInedx提出来，方便外部调用
    property alias currentText: currentext.text
    property alias titleText: titleText.text
    property alias fontFamily: titleText.font.family

    property string currentname: ""       //初始状态下，comboBox显示的内容，看需求自定义
    property int listheight: 100          //listview的长度和listelement的长度
    property int listelementheight: 52
    property var items: [                //listview的代理项目
        { target: "" }
    ]
    width: 545
    height: 50
    smooth:true

    Rectangle {
        id:chosenItem
        color: "transparent"
        width:parent.width;
        height:comboBox.height;
        smooth:true;

        Text {
            id: titleText
            width: 100
            verticalAlignment: Text.AlignVCenter
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            text: "Username"
            font.pixelSize: 16
            color: "#7b7a7a"
        }

        Text {
            id:currentext
            color: "#7a7b7b"
            width: 100
            height: parent.height
            text: comboBox.currentname
            font.family: titleText.font.family
            font.pointSize: 16
            verticalAlignment: Text.AlignVCenter
            anchors.right: parent.right
            anchors.rightMargin: 80
            visible: true;  //可见
        }
        ImageButton {
            width: 26
            height: 13
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            imagePath: "qrc:/images/arrow-down.png"


            onClicked:{
                console.log("menuBtn click")
            }
        }

        MouseArea {
            width: comboBox.width / 18 * 40
            height: comboBox.height / 3
            anchors.bottomMargin: 0
            anchors.fill: parent;
            onClicked: {
                dropDown.visible = true
            }
        }
    }

    Rectangle{
        id:dropDown
        width:comboBox.width
        height: comboBox.listheight
        visible: false
        anchors.top: chosenItem.bottom

        ListView{
            id:listviewer
            height: comboBox.listheight
            model: comboBox.items
            currentIndex: 0;
            delegate: Rectangle{
                id: listbg
                width: dropDown.width
                height: 52
                color: "transparent"


                Text {
                    text: modelData.target
                    font.pixelSize: 16
                    font.family: titleText.font.family
                    color: "#7a7b7b";
                    elide: Text.ElideRight
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: listbg.left
                    anchors.leftMargin: 10
                }

                Rectangle {
                    anchors.bottom: listbg.bottom
                    anchors.left: listbg.left
                    anchors.leftMargin: 10
                    width: parent.width - 50
                    height: 1
                    color: "#e2e2e2"
                }

                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        dropDown.visible = false
                        currentext.text = modelData.target;
                        listviewer.currentIndex = index;
                    }
                }
            }

            ScrollBar.vertical: bar
        }

        ScrollBar {
            id: bar
            active: true
            anchors {
                left: listviewer.left
                top: listviewer.top
                bottom: listviewer.bottom
                leftMargin: dropDown.width - 30
            }
        }
    }

//设置下拉动画
    //状态列表
    states: State {
        name: "dropDown";
        PropertyChanges { target: dropDown; height:listviewer.height+1}
    }
    //转换列表
    transitions: Transition {
        NumberAnimation { target: dropDown; properties: "height"; easing.type: Easing.OutExpo; duration: 1000 }
    }
}

