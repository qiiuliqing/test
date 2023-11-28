import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    id:liquidItem

    Rectangle {
        id: rect1
        x:0
        y:0
        width: (parent.width - 6) / 3
        height: 84

        Text {
            color: "#7b7a7a"
            text: qsTr("Temp A")
            font.family: mediumFont.name
            font.pixelSize: 24
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }


        MouseArea {
            anchors.fill: parent;
            onClicked: {
                rect1.color = "#ffffff"
                rect2.color = "#f5f5f5"
                rect3.color = "#f5f5f5"
                stackView1.push(aPage)
            }
        }
    }

    Rectangle {
        id: rect2
        x:rect1.x + rect1.width + 3
        y: 0
        width: (parent.width - 6) / 3
        height: 84
        color: "#f5f5f5"

        Text {
            color: "#7b7a7a"
            text: qsTr("Temp B")
            font.family: mediumFont.name
            font.pixelSize: 24
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                rect1.color = "#f5f5f5"
                rect2.color = "#ffffff"
                rect3.color = "#f5f5f5"
                stackView1.push(bPage)
            }
        }
    }

    Rectangle {
        id: rect3
        x:rect2.x + rect2.width + 3
        y: 0
        width: (parent.width - 6) / 3
        height: 84
        color: "#f5f5f5"

        Text {
            color: "#7b7a7a"
            text: qsTr("Inlet Temp")
            font.family: mediumFont.name
            font.pixelSize: 24
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                rect1.color = "#f5f5f5"
                rect2.color = "#f5f5f5"
                rect3.color = "#ffffff"
                stackView1.push(lnletPage)
            }
        }
    }

    Component{
        id: aPage
        TemperatureA {
            width: rect1.width
        }
    }

    Component{
        id: bPage
        TemperatureB {
            width: rect2.width
        }
    }

    Component{
        id: lnletPage
        TemperatureInlet {
            width: rect3.width
        }
    }


    StackView {
        id: stackView1
        anchors.left: parent.left
        anchors.top: rect1.bottom
        anchors.right: parent.right
        height: 590
        initialItem: aPage

        pushEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 0
            }
        }
        pushExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 0
            }
        }
        popEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to:1
                duration: 0
            }
        }
        popExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to:0
                duration: 0
            }
        }
    }
}
