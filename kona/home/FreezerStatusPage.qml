import QtQuick 2.0

Item {
    id: page

    Rectangle {
        id: midRect1
        x: 0
        y: 60
        width: (parent.width - 6) / 3
        height: 300

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 22

            Image {
                id: image4
                source: "qrc:/images/temp-a.png"
                fillMode:Image.Stretch
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row {
                spacing: 10
                height: 170

                Text {
                    id: tmp1
                    color: "#7b469b"
                    text: qsTr("-196.6")
                    font.family: mediumFont.name
                    font.pixelSize: 82
                }

                Text {
                    color: "#7b7a7a"
                    text: qsTr("°C")
                    font.family: mediumFont.name
                    font.pixelSize: 50
                    anchors.bottom: tmp1.bottom
                    anchors.bottomMargin: 10
                }
            }

            Row{

                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    id: image5
                    source: "qrc:/images/alarm-gray.png"
                    fillMode:Image.Stretch
                }


                Text {
                    color: "#7b7a7a"
                    text: qsTr("-50°C")
                    font.family: mediumFont.name
                    font.pixelSize: 24
                    anchors.verticalCenter: image5.verticalCenter
                }
            }


        }
    }

    Rectangle {
        x: midRect1.x + midRect1.width
        y: midRect1.y
        width: 2
        height: 300
        color: "#e2e2e2"
    }

    Rectangle {
        id: midRect2
        x: midRect1.x + midRect1.width + 2
        y: midRect1.y
        width: (parent.width - 6) / 3
        height: 300

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 22

            Image {
                id: image6
                source: "qrc:/images/temp-b.png"
                fillMode:Image.Stretch
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row {
                spacing: 20
                height: 170

                Text {
                    id: tmp2
                    color: "#0075bd"
                    text: qsTr("-196.6")
                    font.family: mediumFont.name
                    font.pixelSize: 82
                }

                Text {
                    color: "#7b7a7a"
                    text: qsTr("°C")
                    font.family: mediumFont.name
                    font.pixelSize: 50
                    anchors.bottom: tmp2.bottom
                    anchors.bottomMargin: 10
                }
            }

            Row{

                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    id: image7
                    source: "qrc:/images/alarm-gray.png"
                    fillMode:Image.Stretch
                }


                Text {
                    color: "#7b7a7a"
                    text: qsTr("-200°C")
                    font.family: mediumFont.name
                    font.pixelSize: 24
                    anchors.verticalCenter: image7.verticalCenter
                }
            }


        }
    }

    Rectangle {
        x: midRect2.x + midRect2.width
        y: midRect1.y
        width: 2
        height: 300
        color: "#e2e2e2"
    }

    Rectangle {
        id: midRect3
        x: midRect2.x + midRect2.width + 2
        y: midRect1.y
        width: (parent.width - 6) / 3
        height: 300

        Column {
            // anchors.horizontalCenter: parent.horizontalCenter
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 60
            anchors.rightMargin: 60
            spacing: 22

            Image {
                id: image8
                source: "qrc:/images/ln2.png"
                fillMode:Image.Stretch
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Row {
                spacing: 20
                height: 150
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    id: tmp3
                    color: "#0fa1a5"
                    text: qsTr("10.0")
                    font.family: mediumFont.name
                    font.pixelSize: 82
                }

                Text {
                    color: "#7b7a7a"
                    text: qsTr("in")
                    font.family: mediumFont.name
                    font.pixelSize: 50
                    anchors.bottom: tmp3.bottom
                    anchors.bottomMargin: 10
                }
            }

            Column{
                spacing: 10
                Rectangle{
                    color: "#E9E9E9"
                    width: midRect3.width - 124
                    height: 10

                    Rectangle{
                        x:parent.x
                        y:parent.y
                        width: 100
                        height: 10
                        color: "#0fa1a5"
                    }
                }

                Row{

                    spacing: midRect3.width - 325
                    anchors.horizontalCenter: parent.horizontalCenter

                    Row {
                        spacing: 10
                        Image {
                            id:image9
                            source: "qrc:/images/alarm-gray.png"
                            fillMode:Image.Stretch
                        }


                        Text {
                            color: "#7b7a7a"
                            text: qsTr("7.0 in")
                            font.family: mediumFont.name
                            font.pixelSize: 24
                            anchors.verticalCenter: image9.verticalCenter
                        }
                    }

                    Row {
                        spacing: 10
                        Image {
                            id:image10
                            source: "qrc:/images/alarm-gray.png"
                            fillMode:Image.Stretch
                        }


                        Text {
                            color: "#7b7a7a"
                            text: qsTr("36.0 in")
                            font.family: mediumFont.name
                            font.pixelSize: 24
                            anchors.verticalCenter: image10.verticalCenter
                        }
                    }
                }
            }
        }
    }
}
