import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14
import "../common"


Dialog {
    id: dialog
    width: 860
    height: 455

    signal next()

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
            text: "Select Download Data"
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

        KonaRadioButton {
            height: 50
            width: 545
            checked: true
            labText: qsTr("Journal")
       }

        Rectangle {
            width: 545
            height: 1
            color: "#e2e2e2"
            z: 0
        }

        KonaRadioButton {
            height: 50
            width: 545
            labText: qsTr("Data and Events")
       }


        Rectangle {
            width: 545
            height: 1
            color: "#e2e2e2"
            z: 0
        }

        KonaRadioButton {
            height: 50
            width: 545
            labText: qsTr("All")
       }

        Rectangle {
            width: 545
            height: 1
            color: "#e2e2e2"
            z: 0
        }


        Rectangle {
            width: 545
            height: 160
            //anchors.bottom: dialog.Bottom

            Row {
                spacing: 15
                anchors.bottom: parent.bottom
                //anchors.bottomMargin: 25

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

                Rectangle{
                    width: 295
                    height: 80
                    color: "#0075BC"

                    Text {
                        font.family: mediumFont.name
                        font.pixelSize: 24
                        width: 20
                        height: 80
                        text:"Next"
                        color: "#ffffff"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.horizontalCenterOffset: -20
                        //anchors.verticalCenter: parent.verticalCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    Image {
                        id: name
                        source: "qrc:/images/right-arrow-white.png"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.verticalCenterOffset: 2
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.horizontalCenterOffset: 40
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                            dialog.next()
                            dialog.close()
                        }
                    }

                }
            }

        }
    }
}
