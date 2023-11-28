import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    id:liquidItem

    Rectangle {
        id: rect1
        x:0
        y:0
        width: (parent.width - 9) / 4
        height: 84

        Text {
            color: "#7b7a7a"
            text: qsTr("Firmware & Reset")
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
                rect4.color = "#f5f5f5"
                stackView1.push(page1)
            }
        }
    }

    Rectangle {
        id: rect2
        x:rect1.x + rect1.width + 3
        y: 0
        width: (parent.width - 9) / 4
        height: 84
        color: "#f5f5f5"

        Text {
            color: "#7b7a7a"
            text: qsTr("Clone Config.")
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
                rect4.color = "#f5f5f5"
                stackView1.push(page2)
            }
        }
    }

    Rectangle {
        id: rect3
        x:rect2.x + rect2.width + 3
        y: 0
        width: (parent.width - 9) / 4
        height: 84
        color: "#f5f5f5"

        Text {
            color: "#7b7a7a"
            text: qsTr("Users")
            font.family: mediumFont.name
            font.pixelSize: 24
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rect1.color = "#f5f5f5"
                rect2.color = "#f5f5f5"
                rect3.color = "#ffffff"
                rect4.color = "#f5f5f5"
                stackView1.push(page3)
            }
        }
    }

    Rectangle {
        id: rect4
        x:rect3.x + rect3.width + 3
        y: 0
        width: (parent.width - 9) / 4
        height: 84
        color: "#f5f5f5"

        Text {
            color: "#7b7a7a"
            text: qsTr("Notifications")
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
                rect3.color = "#f5f5f5"
                rect4.color = "#ffffff"
                stackView1.push(page4)
            }
        }
    }

    Component{
        id: page1
        AdvancedFirmware {
            width: rect1.width
        }
    }

    Component{
        id: page2
        AdvancedCloneConfig {
            width: rect2.width
        }
    }

    Component{
        id: page3
        AdvancedUsers {
            width: liquidItem.width
        }
    }

    Component{
        id: page4
        AdvancedNotifications {
            width: liquidItem.width
        }
    }


    StackView {
        id: stackView1
        anchors.left: parent.left
        anchors.top: rect1.bottom
        anchors.right: parent.right
        height: 590
        initialItem: page1

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
