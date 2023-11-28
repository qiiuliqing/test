import QtQuick 2.13
import QtQuick.Controls 2.13
import Qt.labs.qmlmodels 1.0

Rectangle {


    Rectangle{
        id:header
        width: parent.width
        height: 50

        Row{
            spacing: 0

            Repeater{
                model: ["User ID","Name","Email/Phone","Level"]

                Rectangle{
                    width: {
                        var w = 0
                        switch(index){
                        case 0: w = 280;break;
                        case 1: w = 280;break;
                        case 2: w = 280;break;
                        case 3: w = 280;break;
                        }
                        return w
                    }
                    height: header.height

                    Rectangle {
                        color: "#e2e2e2"
                        height: 2
                        width: parent.width
                        anchors.top: parent.top
                        anchors.left: parent.left
                    }

                    Rectangle {
                        color: "#e2e2e2"
                        height: 2
                        width: parent.width
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                    }

                    Rectangle {
                        color: "#e2e2e2"
                        height: parent.height
                        width: 2
                        anchors.right: parent.right
                        anchors.top: parent.top
                        visible: {
                            if (index < 3) {
                                return true
                            } else {
                                return false
                            }
                        }
                    }

                    color: "#ffffff"
                    Text {
                        text: modelData
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        anchors.verticalCenter: parent.verticalCenter
                        font.pointSize: 12
                        font.family: mediumFont.name
                        color: "#7b7a7a"
                        horizontalAlignment: Text.AlignLeft
                    }
                }
            }
        }
    }
    TableView{
        id:tableView
        width: parent.width
        anchors.top:header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        clip: true
        boundsBehavior: Flickable.OvershootBounds


        ScrollBar.vertical: ScrollBar {
            anchors.right:parent.right
            anchors.rightMargin: 0
            visible: tableModel.rowCount > 5
            background: Rectangle{
                color:"#ffffff"
            }
            onActiveChanged: {
                active = true;
            }
            contentItem: Rectangle
            {
                implicitWidth  : 6
                implicitHeight : 30
                radius : 3
                color  : "#c4c4c4"
            }
        }

        model: TableModel {
            id:tableModel

            TableModelColumn{display: "user"}
            TableModelColumn{display: "name"}
            TableModelColumn{display: "email"}
            TableModelColumn{display: "level"}

        }
        delegate:DelegateChooser{

            DelegateChoice{
                column: 0
                delegate: Rectangle{
                    color: "#ffffff"
                    implicitWidth: 280
                    implicitHeight: 50

                    Rectangle {
                        color: "#e2e2e2"
                        height: 1
                        width: parent.width
                        anchors.top: parent.top
                        anchors.left: parent.left
                    }

                    Rectangle {
                        color: "#e2e2e2"
                        height: parent.height
                        width: 2
                        anchors.right: parent.right
                        anchors.top: parent.top
                    }

                    Text {
                        text: display
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        anchors.verticalCenter: parent.verticalCenter
                       // anchors.centerIn: parent
                        //font.weight: Font.Light
                        font.pointSize: 12
                        font.family: regularFont.name
                        color: "#7b7a7a"
                    }
                }
            }
            DelegateChoice{
                column: 1
                delegate: Rectangle{
                    color: "#ffffff"
                    implicitWidth: 280
                    implicitHeight: 50

                    Rectangle {
                        color: "#e2e2e2"
                        height: 1
                        width: parent.width
                        anchors.top: parent.top
                        anchors.left: parent.left
                    }

                    Rectangle {
                        color: "#e2e2e2"
                        height: parent.height
                        width: 2
                        anchors.right: parent.right
                        anchors.top: parent.top
                    }

                    Text {
                        text: display
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        anchors.verticalCenter: parent.verticalCenter
                        //font.weight: Font.Light
                        font.pointSize: 12
                        font.family: regularFont.name
                        color: "#7b7a7a"
                    }
                }
            }
            DelegateChoice{
                column: 2
                delegate: Rectangle{
                    color: "#ffffff"
                    implicitWidth: 280
                    implicitHeight: 50

                    Rectangle {
                        color: "#e2e2e2"
                        height: 1
                        width: parent.width
                        anchors.top: parent.top
                        anchors.left: parent.left
                    }

                    Rectangle {
                        color: "#e2e2e2"
                        height: parent.height
                        width: 2
                        anchors.right: parent.right
                        anchors.top: parent.top
                    }

                    Text {
                        text: display
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        anchors.verticalCenter: parent.verticalCenter
                        //font.weight: Font.Light
                        font.pointSize: 12
                        font.family: regularFont.name
                        color: "#7b7a7a"
                    }
                }
            }
            DelegateChoice{
                column: 3
                delegate: Rectangle{
                    color: "#ffffff"
                    implicitWidth: 280
                    implicitHeight: 50
                    //clip: true

                    Rectangle {
                        color: "#e2e2e2"
                        height: 1
                        width: parent.width
                        anchors.top: parent.top
                        anchors.left: parent.left
                    }

                    Text {
                        text: display
                        width: 200
                        height: 50
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        verticalAlignment: Text.AlignVCenter
                        //font.weight: Font.Light
                        font.pointSize: 12
                        font.family: regularFont.name
                        color: "#7b7a7a"
                        elide: Text.ElideRight
                    }

                    Rectangle{
                        width: 45
                        height: 45
                        anchors.right: parent.right
                        anchors.rightMargin: 15
                        anchors.verticalCenter: parent.verticalCenter

                        Image{
                            id:image
                            source: "qrc:/images/edit.png"
                            fillMode:Image.Stretch
                            anchors.centerIn: parent
                        }

                    }
                }
            }
        }
    }

    Component.onCompleted: {
        tableModel.appendRow({"user":"User ID 1","name":"Steve Adams","email":"SteveAdams@1234.com","level":"Admin"})
        tableModel.appendRow({"user":"User ID 2","name":"Steve Adams","email":"SteveAdams@1234.com","level":"Distributer/Se..."})
        tableModel.appendRow({"user":"User ID 1","name":"Steve Adams","email":"SteveAdams@1234.com","level":"User"})
        tableModel.appendRow({"user":"User ID 2","name":"Steve Adams","email":"SteveAdams@1234.com","level":"User"})
        tableModel.appendRow({"user":"User ID 1","name":"Steve Adams","email":"SteveAdams@1234.com","level":"User"})
        tableModel.appendRow({"user":"User ID 2","name":"Steve Adams","email":"SteveAdams@1234.com","level":"User"})
        tableModel.appendRow({"user":"User ID 2","name":"Steve Adams","email":"SteveAdams@1234.com","level":"User"})
    }

}

