import QtQuick 2.0
import QtQuick.Layouts 1.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.15

Dialog {
    id: keyWindow
    width: 1280
    height: 500

    signal inputValue(string value)

    modal: true /* 非模态对话框 */
    closePolicy: Popup.NoAutoClose   /* 不自动关闭 */

    /* 背景 */
    background: Rectangle {
        color: "#ffffff"
        border.color: "#231f20"
        border.width: 0
        radius: 0
    }

    // 弹出窗口内容
    ColumnLayout {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 5
        Rectangle {
            width: parent.width
            height: 30

            TextInput {
                id: textInput
                width: 1050
                height: 20
                font.family: mediumFont.name
                font.pixelSize: 20
                color: "#7b7a7a"
                text: ""
                cursorVisible: true
                anchors.left: parent.left
                anchors.leftMargin: 75
                anchors.top: parent.top
                anchors.topMargin: 10

                cursorDelegate: Rectangle{
                    width: 3
                    color: "#7b7a7a"
                    visible: true
    //                SequentialAnimation on visible {
    //                    id: cursorAnimation
    //                    running: false
    //                    loops: Animation.Infinite
    //                    PropertyAnimation { from:true; to: false; duration: 750 }
    //                    PropertyAnimation { from:false; to: true; duration: 500 }
    //                }
                }
            }
        }



        Rectangle  {
            width: 1280
            height: 80

            RowLayout {
                anchors.horizontalCenter: parent.horizontalCenter
                Repeater{
                    model: ["1","2","3","4","5","6","7","8","9","0"]

                    Rectangle {
                        width: 94
                        height: 80
                        color: "#e2e2e2"

                        Text {
                            anchors.centerIn: parent
                            text: modelData
                            color: "#7b7a7a"
                            font.pixelSize: 28
                            font.family: mediumFont.name
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                textInput.text = textInput.text + modelData
                            }
                        }
                    }
                }

                Rectangle {
                    width: 140
                    height: 80
                    color: "#c4c4c4"

                    Image {
                        source: "qrc:/images/keyboard-delete.png"
                        anchors.centerIn: parent
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                                       var len = textInput.text.length
                                       textInput.text = textInput.text.substring(0, len - 1)
                        }
                    }
                }
            }

        }


        Rectangle  {
            width: 1280
            height: 80
            RowLayout {
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle {
                    width: 94
                    height: 80
                    color: "#c4c4c4"

                    Text {
                        anchors.centerIn: parent
                        text: "@"
                        color: "#7b7a7a"
                        font.pixelSize: 28
                        font.family: mediumFont.name
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            textInput.text = textInput.text + "@"
                        }
                    }
                }

                Repeater{
                    model: ["q","w","e","r","t","y","u","i","o","p"]

                    Rectangle {
                        width: 94
                        height: 80
                        color: "#e2e2e2"

                        Text {
                            anchors.centerIn: parent
                            text: modelData
                            color: "#7b7a7a"
                            font.pixelSize: 28
                            font.family: mediumFont.name
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                textInput.text = textInput.text + modelData
                            }
                        }
                    }
                }
            }
        }

        Rectangle  {
            width: 1280
            height: 80

            RowLayout {
                anchors.horizontalCenter: parent.horizontalCenter
                Repeater{
                    model: ["a","s","d","f","g","h","j","k","l"]

                    Rectangle {
                        width: 94
                        height: 80
                        color: "#e2e2e2"

                        Text {
                            anchors.centerIn: parent
                            text: modelData
                            color: "#7b7a7a"
                            font.pixelSize: 28
                            font.family: mediumFont.name
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                textInput.text = textInput.text + modelData
                            }
                        }
                    }
                }

                Rectangle {
                    width: 94
                    height: 80
                    color: "#c4c4c4"

                    Text {
                        anchors.centerIn: parent
                        text: "."
                        color: "#7b7a7a"
                        font.pixelSize: 28
                        font.family: mediumFont.name
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            textInput.text = textInput.text + "."
                        }
                    }
                }
            }

        }


        Rectangle  {
            width: 1280
            height: 80

            RowLayout {
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle {
                    width: 140
                    height: 80
                    color: "#c4c4c4"

                    Image {
                        source: "qrc:/images/keyboard-shift.png"
                        anchors.centerIn: parent
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {

                        }
                    }
                }

                Repeater{
                    model: ["z","x","c","v","b","n","m"]

                    Rectangle {
                        width: 94
                        height: 80
                        color: "#e2e2e2"

                        Text {
                            anchors.centerIn: parent
                            text: modelData
                            color: "#7b7a7a"
                            font.pixelSize: 28
                            font.family: mediumFont.name
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                textInput.text = textInput.text + modelData
                            }
                        }
                    }
                }

                Rectangle {
                    width: 94
                    height: 80
                    color: "#c4c4c4"

                    Text {
                        anchors.centerIn: parent
                        text: "_"
                        color: "#7b7a7a"
                        font.pixelSize: 28
                        font.family: mediumFont.name
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            textInput.text = textInput.text + "_"
                        }
                    }
                }

                Rectangle {
                    width: 94
                    height: 80
                    color: "#c4c4c4"

                    Text {
                        anchors.centerIn: parent
                        text: "-"
                        color: "#7b7a7a"
                        font.pixelSize: 28
                        font.family: mediumFont.name
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            textInput.text = textInput.text + "-"
                        }
                    }
                }
            }
        }


        Rectangle  {
            width: 1280
            height: 80
            RowLayout {
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle {
                    width: 140
                    height: 80
                    color: "#c4c4c4"

                    Text {
                        anchors.centerIn: parent
                        text: ".com"
                        color: "#7b7a7a"
                        font.pixelSize: 28
                        font.family: mediumFont.name
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            textInput.text = textInput.text + ".com"
                        }
                    }
                }

                Rectangle {
                    width: 94
                    height: 80
                    color: "#c4c4c4"

                    Image {
                        source: "qrc:/images/keyboard-language.png"
                        anchors.centerIn: parent
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {

                        }
                    }
                }

                Rectangle {
                    width: 501
                    height: 80
                    color: "#e2e2e2"

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {

                        }
                    }
                }

                Rectangle {
                    width: 94
                    height: 80
                    color: "#7b7a7a"

                    Image {
                        source: "qrc:/images/keyboard-x.png"
                        anchors.centerIn: parent
                    }


                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            keyWindow.close()
                        }
                    }
                }

                Rectangle {
                    width: 248
                    height: 80
                    color: "#0075bd"

                    Image {
                        source: "qrc:/images/keyboard-check.png"
                        anchors.centerIn: parent
                    }


                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            keyWindow.close()
                        }
                    }
                }
            }
        }

    }
}

