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
            text: "Information"
            color: "#7b7a7a"
            font.pointSize: 24
            verticalAlignment: Text.AlignVCenter
            font.family: mediumFont.name
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
            width: 620
            height: 20
            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"Freezer Model"
                color: "#7b7a7a"
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft

            }

            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"123456789"
                color: "#c4c4c4"
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignRight
            }
        }

        Rectangle {
            width: 620
            height: 20
            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"Freezer Serial Number"
                color: "#7b7a7a"
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft

            }

            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"123456789"
                color: "#c4c4c4"
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignRight
            }
        }

        Rectangle {
            width: 620
            height: 20
            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"Unit ID"
                color: "#7b7a7a"
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft

            }

            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"123455"
                color: "#c4c4c4"
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignRight
            }
        }

        Rectangle {
            width: 620
            height: 20
            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"Freezer Name"
                color: "#7b7a7a"
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft

            }

            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"Name 1"
                color: "#c4c4c4"
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignRight
            }
        }

        Rectangle {
            width: 620
            height: 20
            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"Firmware Version Number"
                color: "#7b7a7a"
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft

            }

            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"123456789"
                color: "#c4c4c4"
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignRight
            }
        }

        Rectangle {
            width: 620
            height: 20
            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"Email"
                color: "#7b7a7a"
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft

            }

            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"Example@email.com"
                color: "#c4c4c4"
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignRight
            }
        }

        Rectangle {
            width: 620
            height: 20
            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"Phone"
                color: "#7b7a7a"
                anchors.left: parent.left
                anchors.leftMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignLeft

            }

            Text {
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 80
                height: 20
                text:"(123) 456-7890"
                color: "#c4c4c4"
                anchors.right: parent.right
                anchors.rightMargin: 30
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignRight
            }
        }

        Rectangle {
            width: 620
            height: 80
            Layout.topMargin: 30

            Rectangle {
                width: 295
                height: 80
                color: "#7A7979"
                anchors.horizontalCenter: parent.horizontalCenter

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
                        text:"Close"
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
}
