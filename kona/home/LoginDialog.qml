import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import "../common"


Dialog {
    id: dialog
    width: 860
    height: 455

    signal logined(string value)

    anchors.centerIn: Overlay.overlay   /* 居中展现 */

    title: qsTr("提示")
    modal: true /* 非模态对话框 */
    closePolicy: Popup.NoAutoClose   /* 不自动关闭 */

    /* 背景 */
    background: Rectangle {
        color: "#ffffff"
        border.color: "#231f20"
        border.width: 0
        radius: 0
    }

    /* 数字输入对话框 */
    Component {
        id: numberDialogCmpt
        NumberInputPopup {
            onClosed: destroy()
            onInputValue: {
                passwdText.text = value
                loginBtn.color = "#0075BC"
            }
        }
    }

    Component {
        id: forgotDialogCmpt
        ForgotPasscodeDialog {
            onClosed: destroy()
        }
    }


    /* 标题 */
    header: Item {
        height: 82
        width: 860
        Text {
            id: titleLabel
            height: 80
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "User Login"
            color: "#7b7a7a"
            font.pointSize: 24
            font.family: mediumFont.name
            verticalAlignment: Text.AlignVCenter
        }

        /* 水平分隔线 */
        Rectangle {
            id: horizontalLine
            width: 660
            height: 2
            anchors.top: titleLabel.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#e2e2e2"
        }
    }

    /* 内容 */
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 0

        KonaComboxBox{
            id: userName
            fontFamily: mediumFont.name
            z: 1
            width: 545
            listheight: 200
            listelementheight: 52
            currentname: ""
            items: [
                {target:"Username 1"},
                {target:"Username 2"},
                {target:"Username 3"},
                {target:"Username 4"}
            ]
        }
        Rectangle {
            width: 545
            height: 1
            color: "#e2e2e2"
            z: 0
        }

        Rectangle {
            height: 52
            width: 545
            z: 0
            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 10
                Text {
                    width: 100
                    verticalAlignment: Text.AlignVCenter
                    text: "Passcode"
                    font.family: mediumFont.name
                    font.pixelSize: 16
                    color: "#7b7a7a"
                }

                TextInput {
                    id: passwdText
                    font.family: mediumFont.name
                    font.pixelSize: 16
                    text:""
                    horizontalAlignment: Text.AlignRight
                    Layout.fillWidth: true
                    color: "#7b7a7a"
                    cursorVisible: true
                    echoMode: TextInput.Password
                    readOnly: true
                }
            }

            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onClicked: x => {
                    var numberDialog = numberDialogCmpt.createObject(parent)
                    numberDialog.y = -230
                    numberDialog.x = 340
                    numberDialog.open()

                }
            }


        }

        Rectangle {
            width: 545
            height: 1
            color: "#e2e2e2"
            z: 0
        }

        Rectangle {
            width: 545
            height: 52
            Layout.topMargin: 10
            z: 0

            TextButton {
                id: forgotBtn
                width: 200
                height: 30
               // anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                buttonName: "Forgot your passcode?"
                textColor: "#7b7a7a"
                fontSize: 16
                fontFamily: mediumFont.name
            }

            Rectangle {
                anchors.top: forgotBtn.bottom
                anchors.left: forgotBtn.left
                anchors.leftMargin: 10
                width: 200
                height: 2
                color: "#e2e2e2"
            }

            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onClicked: x => {
                    var forgotDialog = forgotDialogCmpt.createObject(parent)
                    forgotDialog.open()

                }
            }
        }

        Rectangle {
            width: 545
            height: 95
        }

        Rectangle {
            width: 545
            height: 80
            //anchors.bottom: dialog.Bottom
            Layout.bottomMargin: 25

            Row {
                spacing: 15

                Rectangle {
                    width: 295
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
                            font.pixelSize: 24
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
                            dialog.close()
                        }
                    }
                }

                TextButton{
                    id: loginBtn
                    width: 295
                    height: 80
                    color: "#7FBADE"
                    buttonName: "Log ln"
                    textColor: "#ffffff"
                    fontSize: 24
                    fontFamily: mediumFont.name
                    Layout.alignment: Qt.AlignHCenter

                    onClicked:{
                        dialog.logined(userName.currentText)
                        dialog.close()

                    }
                }
            }


        }


    }

    onAccepted: {
        dialog.close();   /* 点击关闭 */
    }
}
