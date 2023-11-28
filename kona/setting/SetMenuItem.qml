import QtQuick 2.0

Rectangle {

    signal clicked()
    property string textValue
    property string imagePath
    property bool isChecked:false
    color: "#e2e2e2"

    Image{
        id:image
        fillMode:Image.Stretch
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 15
        source: parent.imagePath
    }

    Text {
        id: text
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin:76
        font.family: mediumFont.name
        font.pixelSize: 24
        text: parent.textValue
        color: "#7b7a7a"
    }

    Rectangle {
        color: "#0075bd"
        width: 7
        height: 74
        anchors.right: parent.right
        anchors.top: parent.top
        visible: parent.isChecked
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onClicked: x => {
            parent.clicked()
        }
    }
}
