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
                model: ["Date/Time","User ID","Notes"]

                Rectangle{
                    width: {
                        var w = 0
                        switch(index){
                        case 0: w = 193;break;
                        case 1: w = 193;break;
                        case 2: w = header.width - 386;break;
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
                            if (index < 2) {
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

            TableModelColumn{display: "date"}
            TableModelColumn{display: "user"}
            TableModelColumn{display: "notes"}

        }
        delegate:DelegateChooser{

            DelegateChoice{
                column: 0
                delegate: Rectangle{
                    color: "#ffffff"
                    implicitWidth: 193
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
                    implicitWidth: 193
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
                    implicitWidth: header.width - 386
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
                        width: 694
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
                            source: "qrc:/images/info-small.png"
                            fillMode:Image.Stretch
                            anchors.centerIn: parent
                        }

                    }
                }
            }
//            DelegateChoice{
//                column: 3
//                delegate: Rectangle{
//                    color: "#666666"
//                    implicitWidth: 150
//                    implicitHeight: 32
//                    border.width: 1
//                    border.color: "#848484"

//                    Button{
//                        width: 70
//                        height: 25
//                        anchors.centerIn: parent
//                        text: "Delete"
//                        background: Rectangle{
//                            radius: 4
//                            color: "cyan"
//                        }

//                        onClicked: {
//                            console.log("btn clicked row:",row)
//                        }
//                    }
//                }
//            }
        }
    }

    Component.onCompleted: {
        tableModel.appendRow({"date":"2022.02.02 09:23:00","user":"User ID 1","notes":"Due to the temperature levelUt enim ad minim veniam,quis nostrud exercitation..."})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","user":"User ID 2","notes":"Due to the temperature levelUt enim ad minim veniam,quis nostrud exercitation..."})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","user":"User ID 3","notes":"Due to the temperature levelUt enim ad minim veniam,quis nostrud exercitation..."})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","user":"User ID 3","notes":"Due to the temperature levelUt enim ad minim veniam,quis nostrud exercitation..."})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","user":"User ID 3","notes":"Due to the temperature levelUt enim ad minim veniam,quis nostrud exercitation..."})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","user":"User ID 3","notes":"Due to the temperature levelUt enim ad minim veniam,quis nostrud exercitation..."})
    }

}

