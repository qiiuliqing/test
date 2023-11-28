import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {

    ColumnLayout {
        spacing: 0

        NumberLine {
            height: 54
            width: 565
            name: "Default Password"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Unit ID"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Freezer Name"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Freezer Model"
            valueText: "123456789"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueColor: "#c4c4c4"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Freezer Serial Number"
            valueText: "123456789"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueColor: "#c4c4c4"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Controller Model"
            valueText: "123456789"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueColor: "#c4c4c4"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Controller Serial Number"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Network"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueText: "02.02.2023\n 00:00 AM"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Date/Time"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueText: "-110°C"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Temp A High Alarm Setpoint"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueText: "-110°C"
            fontSize: 16
        }

        NumberLine {
            height: 54
            width: 565
            name: "Temp B High Alarm Setpoint"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueText: "36 in"
            fontSize: 16
        }

    }
}
