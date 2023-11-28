import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {

    Component {
        id: dateSelectDialogCmpt
        DateSelectDialog {
            onClosed: destroy()
        }
    }


    DateSelectPage {
        height: 102
        width: 400
        anchors.right: parent.right
        anchors.top:  parent.top

        onDateClick: {
            var dialog = dateSelectDialogCmpt.createObject(parent)
            dialog.x = 580
            dialog.y = -85
            dialog.open()
        }
    }

    DataTable {
        width: parent.width - 20
        height: 350
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 135
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 10
    }
}
