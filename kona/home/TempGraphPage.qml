import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {

//    ToggleButton {
//        x:20
//        y:20
//    }

    Component {
        id: dateSelectDialogCmpt
        DateSelectDialog {
            onClosed: destroy()
        }
    }

    RowLayout {
        spacing: 20
        anchors.left: parent.left
        anchors.leftMargin: 70
        anchors.top:parent.top
        anchors.topMargin: 26
        Rectangle {
            width: 50
            height: 3
            color:"#804D9E"
        }

        Text {
            text:"Temp A Graph"
            font.family: mediumFont.name
            color: "#7b7a7a"
            font.pixelSize: 16
            width: 100
            height: 20
        }

        ToggleButton {
            height: 20
        }
    }

    RowLayout {
        spacing: 20
        anchors.left: parent.left
        anchors.leftMargin: 70
        anchors.top:parent.top
        anchors.topMargin: 66
        Rectangle {
            width: 50
            height: 3
            color:"#479BCF"
        }

        Text {
            text:"Temp B Graph"
            font.family: mediumFont.name
            color: "#7b7a7a"
            font.pixelSize: 16
            width: 100
            height: 20
        }

        ToggleButton {
            height: 20
        }
    }




    DateSelectPage {
        id: datePgae
        height: 97
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
        anchors.leftMargin: 8
        width: parent.width
        height: parent.height - 135 - 102
        source: "qrc:/images/1.png"
        fillMode:Image.Stretch
        anchors.top: datePgae.bottom
    }


}
