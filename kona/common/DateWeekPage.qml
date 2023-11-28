import QtQuick 2.0
import QtQuick.Layouts 1.15

Item {

    RowLayout {
        spacing: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        ImageButton {
            width: 13
            height: 27
            imagePath: "qrc:/images/arrow-left.png"
        }

        Text  {
            width: 120
            height: 18
            font.family: mediumFont.name
            font.pixelSize: 16
            color: "#c4c4c4"
            text: "From"
        }

        Text  {
            width: 120
            height: 18
            font.family: mediumFont.name
            font.pixelSize: 16
            color: "#7a7b7b"
            text: "2023.01.30"
        }

        Text  {
            width: 120
            height: 18
            font.family: mediumFont.name
            font.pixelSize: 16
            color: "#c4c4c4"
            text: "To"
        }

        Text  {
            width: 200
            height: 18
            font.family: mediumFont.name
            font.pixelSize: 16
            color: "#7a7b7b"
            text: "2023.02.07"
            Layout.fillWidth: true
        }

        ImageButton {
            imagePath: "qrc:/images/arrow-right.png"
            width: 13
            height: 27
            Layout.leftMargin: 25
        }
    }

}
