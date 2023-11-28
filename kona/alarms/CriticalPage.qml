import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {

    Component {
        id: errorDialogCmpt
        ErrorTipDialog {
            onClosed: destroy()
        }
    }

    ColumnLayout {
        spacing: 0

        CheckLine {
            name: "High Temperature - RTD A"
            height: 51
            width: 565
        }

        CheckLine {
            name: "High Temperature - RTD B"
            height: 51
            width: 565
        }

        CheckLine {
            name: "Low LN2 Level"
            height: 51
            width: 565
        }

        CheckLine {
            name: "High LN2 Level"
            height: 51
            width: 565
            isActive: true
            valuePath: "qrc:/images/info-small.png"

            onClicked: {
                var errorDialog = errorDialogCmpt.createObject(parent)
                errorDialog.titleText = "High Temperature Alarm - RTD A"
                errorDialog.tipText1 = "Measurement on Temp A RTD is at or above the user set high"
                errorDialog.tipText2 = "temperature alarm set point.Please check RTD connections and"
                errorDialog.tipText3 = "contact support if problem persists."
                errorDialog.open()
            }
        }

        CheckLine {
            name: "Fill Value Stuck Open"
            height: 51
            width: 565
        }

        CheckLine {
            name: "Fill Value Stuck Closed"
            height: 51
            width: 565
        }

        CheckLine {
            name: "RTD Output Out of Range"
            height: 51
            width: 565
        }
    }
}
