import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import "../common"


Dialog {
    id: dialog
    width: 860
    height: 455

    signal download()

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
            text: "Select Storage Location"
            color: "#7b7a7a"
            font.pointSize: 24
            font.family: mediumFont.name
            verticalAlignment: Text.AlignVCenter
        }

        /* 水平分隔线 */
        Rectangle {
            id: horizontalLine
            width: 620
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
            fontFamily: mediumFont.name
            z: 1
            width: 545
            listheight: 250
            listelementheight: 52
            currentname: ""
            titleText: "Folder"
            items: [
                {target:"Folder 1"},
                {target:"Folder 2"},
                {target:"Folder 3"},
                {target:"Folder 4"},
                {target:"Folder 5"}
            ]
        }
        Rectangle {
            width: 545
            height: 1
            color: "#e2e2e2"
            z: 0
        }
        Rectangle {
            width: 545
            height: 200
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

                Rectangle {
                    width: 295
                    height: 80
                    color: "#7FBADE"

                    RowLayout {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 10
                        Image {
                            anchors.centerIn: parent.Center
                            source: "qrc:/images/import-white.png"
                            fillMode:Image.Stretch
                        }

                        Text {
                            font.family: mediumFont.name
                            font.pixelSize: 24
                            width: 80
                            height: 25
                            text:"Download"
                            color: "#ffffff"
                        }
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            dialog.download()
                            dialog.close()
                        }
                    }
                }
            }
        }
    }
}
