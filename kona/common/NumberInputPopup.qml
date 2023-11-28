import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Dialog {
    id: numberWindow
    width: 580
    height: 590

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
            anchors.centerIn: parent
            spacing: 0
            TextInput {
                id: numberInput
                width: 60
                height: 10
                font.family: mediumFont.name
                font.pixelSize: 10
                color: "#7b7a7a"
                text: ""
                cursorVisible: true
                echoMode: TextInput.Password
                Layout.topMargin: 50
                Layout.bottomMargin: 50

                cursorDelegate: Rectangle{
                    width: 2
                    color: "#7b7a7a"
                    visible: true
                    SequentialAnimation on visible {
                        id: cursorAnimation
                        running: false
                        loops: Animation.Infinite
                        PropertyAnimation { from:true; to: false; duration: 750 }
                        PropertyAnimation { from:false; to: true; duration: 500 }
                    }
                }
            }

            Item {
                width: 473
                height: 10
                Text {
                    id: validTip
                    width: 100
                    height: 10
                    text: "Invalid Entry"
                    font.family: mediumFont.name
                    font.pixelSize: 14
                    color: "#ed1c24"
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    visible: false
                }

            }


            Rectangle {
                width: 473
                height: 329
                GridLayout {
                    anchors.fill: parent
                    rows: 4
                    columns: 3
                    rowSpacing: 3
                    columnSpacing: 3

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "1"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                           numberInput.text = numberInput.text + "1"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "2"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                numberInput.text = numberInput.text + "2"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "3"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                numberInput.text = numberInput.text + "3"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "4"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                numberInput.text = numberInput.text + "4"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "5"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                numberInput.text = numberInput.text + "5"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "6"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                numberInput.text = numberInput.text + "6"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "7"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                numberInput.text = numberInput.text + "7"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "8"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                numberInput.text = numberInput.text + "8"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "9"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                numberInput.text = numberInput.text + "9"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 313
                        Layout.preferredHeight: 80
                        Layout.columnSpan: 2
                        Text {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            text: "0"
                            font.family: mediumFont.name
                            color: "#7b7a7a"
                            font.pixelSize: 28
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                numberInput.text = numberInput.text + "0"
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }

                    Rectangle {
                        color: "#EAEAEA"
                        Layout.preferredWidth: 155
                        Layout.preferredHeight: 80
                        Image {
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            source: "qrc:/images/keyboard-delete.png"
                            fillMode:Image.Stretch
                        }

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: x => {
                                var len = numberInput.text.length
                                numberInput.text = numberInput.text.substring(0, len - 1)
                                           if (numberInput.length > 12) {
                                               validTip.visible = true
                                           } else {
                                               validTip.visible = false
                                           }
                            }
                        }
                    }
                }
            }

            RowLayout {
                Layout.topMargin: 28
                Layout.bottomMargin: 28
                spacing: 10
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
                            source: "qrc:/images/keyboard-x.png"
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
                            numberWindow.close()
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
                            numberWindow.inputValue(numberInput.text)
                            numberWindow.close()
                        }
                    }
                }
            }
        }
}
