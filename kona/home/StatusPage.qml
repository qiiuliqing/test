import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: statusItem
    property bool isTip: false
    property string tipText: ""
    property string background: "#F5F5F5"
    property string labColor: "#9d9d9d"
    property string valueColor: "#7b7a7a"
    property string lineColor: "#e2e2e2"
    property string infoColor: "#F5F5F5"

    Rectangle {
        anchors.fill: parent
        color: statusItem.background

        Text  {
            text: statusItem.tipText
            visible: statusItem.isTip
            font.family: mediumFont.name
            font.pixelSize: 16
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 30
            color: statusItem.labColor
        }

        Rectangle {
            width: 530
            height: parent.height
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            color: statusItem.infoColor
            Row {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 25
                anchors.right: parent.right
                anchors.rightMargin: 25
                spacing: 25

                Row {
                    spacing: 15
                    anchors.verticalCenter: parent.verticalCenter
                    Text {
                        color: statusItem.labColor
                        font.family: mediumFont.name
                        font.pixelSize: 16
                        anchors.verticalCenter: parent.verticalCenter
                        verticalAlignment: Text.AlignVCenter
                        text: qsTr("Temp A")
                    }

                    Text {
                        color: statusItem.valueColor
                        font.family: mediumFont.name
                        font.pixelSize: 16
                        anchors.verticalCenter: parent.verticalCenter
                        verticalAlignment: Text.AlignVCenter
                        text: qsTr("-196.6°C")
                    }
                }

                Rectangle {
                    width: 1
                    height: 22
                    color: statusItem.lineColor
                    anchors.verticalCenter: parent.verticalCenter
                }

                Row {
                    spacing: 15
                    anchors.verticalCenter: parent.verticalCenter
                    Text {
                        color: statusItem.labColor
                        font.family: mediumFont.name
                        font.pixelSize: 16
                        anchors.verticalCenter: parent.verticalCenter
                        verticalAlignment: Text.AlignVCenter
                        text: qsTr("Temp B")
                    }

                    Text {
                        color: statusItem.valueColor
                        font.family: mediumFont.name
                        font.pixelSize: 16
                        anchors.verticalCenter: parent.verticalCenter
                        verticalAlignment: Text.AlignVCenter
                        text: qsTr("-196.6°C")
                    }
                }

                Rectangle {
                    width: 1
                    height: 22
                    color: statusItem.lineColor
                    anchors.verticalCenter: parent.verticalCenter
                }

                Row {
                    spacing: 15
                    anchors.verticalCenter: parent.verticalCenter
                    Text {
                        color: statusItem.labColor
                        font.family: mediumFont.name
                        font.pixelSize: 16
                        anchors.verticalCenter: parent.verticalCenter
                        verticalAlignment: Text.AlignVCenter
                        text: qsTr("Level")
                    }

                    Text {
                        color: statusItem.valueColor
                        font.family: mediumFont.name
                        font.pixelSize: 16
                        anchors.verticalCenter: parent.verticalCenter
                        verticalAlignment: Text.AlignVCenter
                        text: qsTr("10 in")
                    }
                }

            }
        }




    }

}
