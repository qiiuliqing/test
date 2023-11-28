import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import "../common"


Dialog {
    id: dialog
    width: 860
    height: 455


    anchors.centerIn: Overlay.overlay   /* 居中展现 */

    modal: true /* 非模态对话框 */
    closePolicy: Popup.NoAutoClose   /* 不自动关闭 */

    /* 背景 */
    background: Rectangle {
        color: "#ffffff"
        border.color: "#231f20"
        border.width: 0
        radius: 0
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
            text: "Connect USB"
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
        spacing: 10

        Rectangle {
            width: 545
            height: 25

            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 100
                height: 25
                text: "Connect USB storage device"
                color: "#7b7a7a"
                anchors.centerIn: parent
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            width: 545
            height: 300
            //anchors.bottom: dialog.Bottom

            Rectangle {
                width: 295
                height: 80
                color: "#7A7979"
                anchors.centerIn: parent
                anchors.verticalCenterOffset: 80

                RowLayout {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
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
        }


    }

    onAccepted: {
        dialog.close();   /* 点击关闭 */
    }
}
