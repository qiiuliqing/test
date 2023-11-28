import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {

    ColumnLayout {
        spacing: 0

        NumberLine {
            height: 51
            width: 565
            name: "Current Firmware Version"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueColor: "#c4c4c4"
            fontSize: 16
            valueText: "123456789"
        }

        NumberLine {
            height: 51
            width: 565
            name: "Firmware Last Updated"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueColor: "#c4c4c4"
            fontSize: 16
            valueText: "2023.05.04"
        }

        NumberLine {
            height: 51
            width: 565
            name: "OS"
            nameHeight: 10
            isEdit: true
            textColor: "#7b7a7a"
            valueColor: "#c4c4c4"
            fontSize: 16
            valueText: "123456789"
        }
    }
}

