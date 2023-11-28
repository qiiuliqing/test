import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {

    ColumnLayout {
        spacing: 0

        ToggleLine {
            height: 51
            width: 565
            name: "Auto Fill Control"
        }

        ToggleLine {
            height: 51
            width: 565
            name: "Scheduled Fill"
        }

        NumberLine {
            height: 51
            width: 565
            name: "Scheduled Fill Day/Time"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
            valueText: "XXX\n hr:mm"
        }

        NumberLine {
            height: 51
            width: 565
            name: "Max Fill Time"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
            valueText: "30 mins"
        }

        ToggleLine {
            height: 51
            width: 565
            name: "Liquid Usage Display"
        }

        ToggleLine {
            height: 51
            width: 565
            name: "Liquid Usage Alarm"
        }

        ToggleLine {
            height: 51
            width: 565
            name: "Liquid Level Offset Calibration"
        }
    }
}
