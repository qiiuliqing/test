import QtQuick 2.0
import "../common"

Item {

    Component {
        id: dateSelectDialogCmpt
        DateSelectDialog {
            onClosed: destroy()
        }
    }


    DateSelectPage {
        id: datePgae
        height: 102
        width: 400
        anchors.right: parent.right
        anchors.top:  parent.top

        onDateClick: {
            var dialog = dateSelectDialogCmpt.createObject(parent)
            dialog.x = parent.width - 590
            dialog.y = -85
            dialog.open()
        }
    }

    Image {
        width: parent.width
        height: parent.height - 135 - 102
        source: "qrc:/images/2.png"
        fillMode:Image.Stretch
        anchors.top: datePgae.bottom
    }
}
