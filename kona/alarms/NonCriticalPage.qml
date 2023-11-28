import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {

    Component {
        id: warnDialogCmpt
        WarnTipDialog {
            onClosed: destroy()
        }
    }


    Item {
        id: leftItem
        width: parent.width / 2
        height: parent.height
        anchors.left: parent.left
        anchors.top: parent.top

        ColumnLayout {
            spacing: 0

            CheckLine {
                name: "Backup Battery Charge Low"
                height: 51
                width: 565
            }

            NumberLine {
                height: 51
                width: 565
                name: "Loss of Power Detected"
                nameHeight: 10
                isEdit: true
                textColor: "#7b7a7a"
                fontSize: 16
                valueText: "30 mins"
            }

            CheckLine {
                name: "LN2 Level Sensing"
                height: 51
                width: 565
            }

            CheckLine {
                name: "Inlet Sensor Out of Range"
                height: 51
                width: 565
            }

            NumberLine {
                height: 51
                width: 565
                name: "One Fill ALL Fill(OFAF) Communication Loss"
                nameHeight: 10
                isEdit: false
                textColor: "#7b7a7a"
                fontSize: 16
                valueColor: "#c4c4c4"
                valueText: "02.02.2023\n 07:00 AM"

                onClicked: {
                    var warnDialog = warnDialogCmpt.createObject(parent)
                    warnDialog.titleText = "One Fill All Fill (OFAF) Communication Loss"
                    warnDialog.tipText1 = "The controller has lost communication and is unable to complete OFAF"
                    warnDialog.tipText2 = "operation.Please check connections and settings on controllers and"
                    warnDialog.tipText3 = "contact support if problem persists."
                    warnDialog.open()
                }
            }

            NumberLine {
                height: 51
                width: 565
                name: "OFAF Failed to Execute"
                nameHeight: 10
                isEdit: false
                textColor: "#7b7a7a"
                fontSize: 16
                valueColor: "#c4c4c4"
                valueText: "02.02.2023\n 07:00 AM"
            }

            CheckLine {
                name: "Scheduled Fill Failed to Execute"
                height: 51
                width: 565
            }

            CheckLine {
                name: "Fill Time"
                height: 51
                width: 565
            }

            NumberLine {
                height: 51
                width: 565
                name: "Lid Open"
                nameHeight: 10
                isEdit: true
                textColor: "#7b7a7a"
                fontSize: 16
                valueText: "10 mins"
            }
        }
    }

    Item {
        id: rightItem
        width: parent.width / 2
        height: parent.height
        anchors.right: parent.right
        //anchors.rightMargin: 10
        anchors.top: parent.top

        ColumnLayout {
            spacing: 0

            ToggleLine {
                height: 51
                width: 565
                name: "Liquid Usage"
            }

            CheckLine {
                name: "Backup Health Alarm"
                height: 51
                width: 565
            }

            ToggleLine {
                height: 51
                width: 565
                name: "Service Notifications"
            }
        }
    }
}
