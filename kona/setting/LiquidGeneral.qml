import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {

    ColumnLayout {
        spacing: 0

        NumberLine {
            height: 51
            width: 565
            name: "High Level Alarm Setpoint"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
            valueText: "7 in"
        }

        NumberLine {
            height: 51
            width: 565
            name: "High Level Setpoint"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
            valueText: "5 in"
        }

        NumberLine {
            height: 51
            width: 565
            name: "Low Level Setpoint"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
            valueText: "4 in"
        }

        NumberLine {
            height: 51
            width: 565
            name: "Low Level Alarm Setpoint"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            fontSize: 16
            valueText: "3 in"
        }
    }
}
