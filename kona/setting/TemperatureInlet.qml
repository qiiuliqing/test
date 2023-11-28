import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {

    ColumnLayout {
        spacing: 0

        NumberLine {
            height: 51
            width: 565
            name: "Inlet Temperature Setpoint"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
            valueText: "-16.6 °C"
        }

        ToggleLine {
            height: 51
            width: 565
            name: "Hot Gas Bypass"
        }

        NumberLine {
            height: 51
            width: 565
            name: "Hot Gas Bypass Max Time"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
            valueText: "-16.6 °C"
        }

        ToggleLine {
            height: 51
            width: 565
            name: "Stuck Value"
        }
    }
}
