import QtQuick 2.0
import QtQuick.Controls 2.2
import "../log"

Item {
    id: logPageItem
    signal statusButtonType(int value)

    Rectangle {
        id: journalRect
        x:0
        y:0
        width: (parent.width - 6) / 3
        height: 84

        Text {
            color: "#7b7a7a"
            text: qsTr("Journal")
            font.family: mediumFont.name
            font.pixelSize: 24
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }


        MouseArea {
            anchors.fill: parent;
            onClicked: {
                journalRect.color = "#ffffff"
                eventRect.color = "#f5f5f5"
                dataRect.color = "#f5f5f5"
                logPageItem.statusButtonType(1)
                stackView1.push(journalPage)
            }
        }
    }

    Rectangle {
        id: eventRect
        x:journalRect.x + journalRect.width + 3
        y: 0
        width: (parent.width - 6) / 3
        height: 84
        color: "#f5f5f5"

        Text {
            color: "#7b7a7a"
            text: qsTr("Event")
            font.family: mediumFont.name
            font.pixelSize: 24
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                journalRect.color = "#f5f5f5"
                eventRect.color = "#ffffff"
                dataRect.color = "#f5f5f5"
                logPageItem.statusButtonType(3)
                stackView1.push(tempGraphPage)
            }
        }
    }

    Rectangle {
        id: dataRect
        x:eventRect.x + eventRect.width + 3
        y: 0
        width: (parent.width - 6) / 3
        height: 84
        color: "#f5f5f5"

        Text {
            color: "#7b7a7a"
            text: qsTr("Data")
            font.family: mediumFont.name
            font.pixelSize: 24
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                journalRect.color = "#f5f5f5"
                eventRect.color = "#f5f5f5"
                dataRect.color = "#ffffff"
                logPageItem.statusButtonType(3)
                stackView1.push(dataPage)
            }
        }
    }

    Component{
        id: journalPage
        JournalPage {
            width: logPageItem.width
        }
    }

    Component{
        id: tempGraphPage
        TempGraphPage {
            width: logPageItem.width
        }
    }

    Component{
        id: dataPage
        DataPage {
            width: logPageItem.width
        }
    }

    StackView {
        id: stackView1
        anchors.left: parent.left
        anchors.top: journalRect.bottom
        anchors.right: parent.right
        height: 590
        initialItem: journalPage

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
