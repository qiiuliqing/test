import QtQuick 2.0
import QtQuick.Controls 2.2
import "../alarms"

Item {
    id: alarmsPageItem
    signal alarmsStatus(int val)


    Rectangle {
        id: criticalRect
        x:0
        y:0
        width: (parent.width - 3) / 2
        height: 84

        Text {
            color: "#7b7a7a"
            text: qsTr("Critical")
            font.family: mediumFont.name
            font.pixelSize: 24
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }


        MouseArea {
            anchors.fill: parent;
            onClicked: {
                criticalRect.color = "#ffffff"
                noCriticalRect.color = "#f5f5f5"
                alarmsPageItem.alarmsStatus(1)
                stackView1.push(criticalPage)
            }
        }
    }

    Rectangle {
        id: noCriticalRect
        x:criticalRect.x + criticalRect.width + 3
        y: 0
        width: (parent.width - 3) / 2
        height: 84
        color: "#f5f5f5"

        Text {
            color: "#7b7a7a"
            text: qsTr("Non - Critical")
            font.family: mediumFont.name
            font.pixelSize: 24
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                criticalRect.color = "#f5f5f5"
                noCriticalRect.color = "#ffffff"
                alarmsPageItem.alarmsStatus(2)
                stackView1.push(nonCriticalPage)
            }
        }
    }

    Component{
        id: criticalPage
        CriticalPage {
            width: criticalRect.width
        }
    }

    Component{
        id: nonCriticalPage
        NonCriticalPage {
            width: alarmsPageItem.width
        }
    }


    StackView {
        id: stackView1
        anchors.left: parent.left
        anchors.top: criticalRect.bottom
        anchors.right: parent.right
        height: 590
        initialItem: criticalPage

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
