import QtQuick 2.0
import QtQuick.Layouts 1.15

Rectangle{
    signal clicked()
    color: "transparent"
    height: 51

    property alias name:name.text

    property bool isEdit
    property bool isActive

    RowLayout {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        spacing: 0

        Text {
            id: name
            font.family: mediumFont.name
            font.pixelSize: 16
            color: "#7b7a7a"
            horizontalAlignment: Text.AlignLeft
            Layout.leftMargin: 30
            height: 10
            Layout.fillWidth: true
        }

        ToggleButton{
            id:btn
            Layout.rightMargin: 10
        }
    }

    Rectangle {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: -1
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
            if (parent.isEdit) {
                parent.clicked()
            }

        }
    }
}
