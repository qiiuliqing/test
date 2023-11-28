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
            text: "Location"
            color: "#7b7a7a"
            font.pointSize: 24
            verticalAlignment: Text.AlignVCenter
            font.family: mediumFont.name
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
        spacing: 30

        Rectangle {
            width: 295
            height: 200
            Image {
                anchors.centerIn: parent
    //            width: 200
    //            height: 200
                id:locationImage
                source: "qrc:/images/freezer-location-1.png"
                fillMode:Image.Stretch
            }

        }


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
