import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.15
import "../common"

Item {

    ScrollView  {
        height: 591
        width: 1150
        clip: true

        ColumnLayout {
            height: 915
            width: 565
            spacing: 0

            NumberLine {
                height: 54
                width: 565
                name: "Global Password"
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
                nameHeight: 10
                isEdit: true
                textColor: "#7b7a7a"
                fontSize: 16
            }

            NumberLine {
                height: 54
                width: 565
                name: "Time Zone"
                valueText: "Pacific Time (US) PDT UTC-7"
                nameHeight: 10
                isEdit: true
                textColor: "#7b7a7a"
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
                valueText: "-110°C"
                fontSize: 16
            }

            NumberLine {
                height: 54
                width: 565
                name: "High Level Alarm Setpoint"
                valueText: "-- in"
                nameHeight: 10
                isEdit: true
                textColor: "#7b7a7a"
                fontSize: 16
            }

            NumberLine {
                height: 54
                width: 565
                name: "Low Level Alarm Setpoint"
                valueText: "-- in"
                nameHeight: 10
                isEdit: true
                textColor: "#7b7a7a"
                fontSize: 16
            }

            ToggleLine {
                height: 51
                width: 565
                name: "Sample Vision"
            }

            ToggleLine {
                height: 51
                width: 565
                name: "Sample Vision Calibration"
            }

            NumberLine {
                height: 54
                width: 565
                name: "Network"
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
                isEdit: false
                textColor: "#7b7a7a"
                fontSize: 16
                valueColor: "#c4c4c4"
            }

            NumberLine {
                height: 54
                width: 565
                name: "Freezer Serial Number"
                valueText: "123456789"
                nameHeight: 10
                isEdit: false
                textColor: "#7b7a7a"
                fontSize: 16
                valueColor: "#c4c4c4"
            }

            NumberLine {
                height: 54
                width: 565
                name: "Controller Model"
                valueText: "123456789"
                nameHeight: 10
                isEdit: false
                textColor: "#7b7a7a"
                fontSize: 16
                valueColor: "#c4c4c4"
            }

            NumberLine {
                height: 54
                width: 565
                name: "Controller Serial Number"
                valueText: "123456789"
                nameHeight: 10
                isEdit: false
                textColor: "#7b7a7a"
                fontSize: 16
                valueColor: "#c4c4c4"
            }

        }
    }

}
