import QtQuick 2.0

Rectangle{
    signal clicked()

    property alias imagePath:image.source
    color: "transparent"

    Image{
        id:image
        width: parent.width
        height: parent.height
        fillMode:Image.Stretch
    }

    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onClicked: x => {
            parent.clicked()
        }
    }
}
