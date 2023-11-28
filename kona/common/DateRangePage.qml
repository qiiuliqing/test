import QtQuick 2.0
import QtQuick.Layouts 1.15

Item {
    id: rangeItem
    signal dateClick()

    RowLayout {
        spacing: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
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
            imagePath: "qrc:/images/calendar.png"
            width: 23
            height: 24
            Layout.leftMargin: 25

            onClicked: {
                rangeItem.dateClick()
            }
        }
    }

}
