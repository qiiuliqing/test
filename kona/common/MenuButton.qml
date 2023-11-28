import QtQuick 2.0

Rectangle{
    signal clicked()

    property alias imagePath:image.source
    width: 113
    height: 145
    color: "#9d9d9d"

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

