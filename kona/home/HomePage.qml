import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: homePageItem
    Rectangle {
        id: statusRect
        x:0
        y:0
        width: (parent.width - 6) / 3
        height: 84

        Row {
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10
            Image {
                id: image1
                source: "qrc:/images/freezer-status.png"
                fillMode:Image.Stretch
            }

            Text {
                color: "#7b7a7a"
                text: qsTr("Freezer Status")
                font.family: mediumFont.name
                font.pixelSize: 24
                font.bold: true
                anchors.verticalCenter: image1.verticalCenter
            }
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                statusRect.color = "#ffffff"
                tempRect.color = "#f5f5f5"
                ln2Rect.color = "#f5f5f5"
                stackView1.push(freezerStatusPage)
            }
        }
    }

    Rectangle {
        id: tempRect
        x:statusRect.x + statusRect.width + 3
        y: 0
        width: (parent.width - 6) / 3
        height: 84
        color: "#f5f5f5"

        Row {
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10
            Image {
                id: image2
                source: "qrc:/images/settings-temperature.png"
                fillMode:Image.Stretch
            }

            Text {
                color: "#7b7a7a"
                text: qsTr("Temp Graph")
                font.family: mediumFont.name
                font.pixelSize: 24
                font.bold: true
                anchors.verticalCenter: image2.verticalCenter
            }
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                statusRect.color = "#f5f5f5"
                tempRect.color = "#ffffff"
                ln2Rect.color = "#f5f5f5"
                stackView1.push(tempGraphPage)
            }
        }
    }

    Rectangle {
        id: ln2Rect
        x:tempRect.x + tempRect.width + 3
        y: 0
        width: (parent.width - 6) / 3
        height: 84
        color: "#f5f5f5"

        Row {
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10
            Image {
                id: image3
                source: "qrc:/images/ln2-graph.png"
                fillMode:Image.Stretch
            }

            Text {
                color: "#7b7a7a"
                text: qsTr("LN2 Graph")
                font.family: mediumFont.name
                font.pixelSize: 24
                font.bold: true
                anchors.verticalCenter: image3.verticalCenter
            }
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                statusRect.color = "#f5f5f5"
                tempRect.color = "#f5f5f5"
                ln2Rect.color = "#ffffff"
                stackView1.push(ln2GraphPage)
            }
        }
    }

    Component{
        id: freezerStatusPage
        FreezerStatusPage {
            width: homePageItem.width
        }
    }

    Component{
        id: tempGraphPage
        TempGraphPage {
            width: homePageItem.width
        }
    }

    Component{
        id: ln2GraphPage
        Ln2GraphPage {
            width: homePageItem.width
        }
    }

    StackView {
        id: stackView1
        anchors.left: parent.left
        anchors.top: statusRect.bottom
        anchors.right: parent.right
        height: 590
        initialItem: freezerStatusPage

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
