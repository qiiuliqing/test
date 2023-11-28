import QtQuick 2.0
import QtQuick.Layouts 1.15

Rectangle{
    signal clicked()
    color: "transparent"

    property alias name:name.text
    property alias nameHeight: name.height
    property alias textColor:name.color
    property alias fontSize:name.font.pixelSize

    property bool isEdit
    property string valueColor:"#7b7a7a"
    property string valueText: "--"

    RowLayout {
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -2
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 0

        Text {
            id: name
            width: 200
            font.family: mediumFont.name
            horizontalAlignment: Text.AlignLeft
            Layout.leftMargin: 30
            height: 10
        }

        Text {
            id: value
            text: valueText
            color: valueColor
            font.family: mediumFont.name
            font.pixelSize: 16
            horizontalAlignment: Text.AlignRight
            Layout.fillWidth: true
            Layout.rightMargin: 10
            height: 10
        }
    }



    Rectangle {
        anchors.bottom: parent.bottom
        height: 1
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.right: parent.right
        color: "#e2e2e2"
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onClicked: x => {
            //if (parent.isEdit) {
                parent.clicked()
           // }

        }
    }
}
