import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    id:liquidItem

    Rectangle {
        id: rect1
        x:0
        y:0
        width: (parent.width - 3) / 2
        height: 84

        Text {
            color: "#7b7a7a"
            text: qsTr("General")
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
                stackView1.push(generalPage)
                //alarmsPageItem.alarmsStatus(1)
                //stackView1.push(criticalPage)
            }
        }
    }

    Rectangle {
        id: rect2
        x:rect1.x + rect1.width + 3
        y: 0
        width: (parent.width - 3) / 2
        height: 84
        color: "#f5f5f5"

        Text {
            color: "#7b7a7a"
            text: qsTr("Advanced")
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
                stackView1.push(advancedPage)
                //alarmsPageItem.alarmsStatus(2)
                //stackView1.push(nonCriticalPage)
            }
        }
    }

    Component{
        id: generalPage
        LiquidGeneral {
            width: rect1.width
        }
    }

    Component{
        id: advancedPage
        LiquidAdvanced {
            width: rect2.width
        }
    }


    StackView {
        id: stackView1
        anchors.left: parent.left
        anchors.top: rect1.bottom
        anchors.right: parent.right
        height: 590
        initialItem: generalPage

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
