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
        height: 220
        width: 860

        Image {
            anchors.top: parent.top
            anchors.topMargin: 20
            source: "qrc:/images/alert-blue-big-check.png"
            fillMode:Image.Stretch
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: titleLabel
            height: 80
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Download Confirmed"
            color: "#7b7a7a"
            font.pointSize: 20
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
        anchors.bottomMargin: 50
        spacing: 0

        Rectangle {
            width: 860
            height: 80

            Text  {
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: mediumFont.name
                font.pixelSize: 16
                width: 860
                height: 25
                text: "The log has been downloaded succesfully."
                color: "#7b7a7a"
                horizontalAlignment: Text.AlignHCenter
            }

        }


        Rectangle {
            width: 860
            height: 200
            Layout.bottomMargin: 50

            Rectangle {
                width: 295
                height: 80
                color: "#0075bd"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                RowLayout {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 10
                    Image {
                        anchors.centerIn: parent.Center
                        source: "qrc:/images/check-white.png"
                        fillMode:Image.Stretch
                    }

                    Text {
                        font.family: mediumFont.name
                        font.pixelSize: 24
                        width: 80
                        height: 25
                        text:"Done"
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
