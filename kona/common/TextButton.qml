import QtQuick 2.0

Rectangle{
    signal clicked()

    property alias buttonName:text.text
    property alias textColor:text.color
    property alias fontSize:text.font.pixelSize
    property alias fontFamily:text.font.family
    property alias fontWeight:text.font.weight

    color: "transparent"

    Text {
        id: text
        anchors.centerIn: parent
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onClicked: x => {
            parent.clicked()
        }
    }
}
