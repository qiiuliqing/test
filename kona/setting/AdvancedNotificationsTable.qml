import QtQuick 2.13
import QtQuick.Controls 2.13
import Qt.labs.qmlmodels 1.0
import "../common"

Rectangle {


    Rectangle{
        id:header
        width: parent.width
        height: 50

        Row{
            spacing: 0

            Repeater{
                model: ["Item","Admin","Distributor","User"]

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

            TableModelColumn{display: "item"}
            TableModelColumn{display: "admin"}
            TableModelColumn{display: "distributor"}
            TableModelColumn{display: "user"}

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
                        anchors.bottom: parent.bottom
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
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                    }

                    Rectangle {
                        color: "#e2e2e2"
                        height: parent.height
                        width: 2
                        anchors.right: parent.right
                        anchors.top: parent.top
                    }

                    ToggleButton {
                        buttonState: display
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter:  parent.horizontalCenter
                        color: {
                            if (display === "left") {
                                return "#DFDFDF"
                            } else {
                                return "#0075C0"
                            }
                        }
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
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                    }

                    Rectangle {
                        color: "#e2e2e2"
                        height: parent.height
                        width: 2
                        anchors.right: parent.right
                        anchors.top: parent.top
                    }

                    ToggleButton {
                        buttonState: display
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter:  parent.horizontalCenter
                        color: {
                            if (display === "left") {
                                return "#DFDFDF"
                            } else {
                                return "#0075C0"
                            }
                        }
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
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                    }


                    ToggleButton {
                        buttonState: display
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter:  parent.horizontalCenter
                        color: {
                            if (display === "left") {
                                return "#DFDFDF"
                            } else {
                                return "#0075C0"
                            }
                        }
                    }
                }
            }
        }
    }

    Component.onCompleted: {
        tableModel.appendRow({"item":"Critical Alarms","admin":"right","distributor":"right","user":"right"})
        tableModel.appendRow({"item":"Non-Critical Alarms","admin":"left","distributor":"left","user":"left"})
        tableModel.appendRow({"item":"Scheduled Fill Failure","admin":"left","distributor":"left","user":"left"})
        tableModel.appendRow({"item":"Lid Sensor Activation","admin":"right","distributor":"right","user":"right"})
        tableModel.appendRow({"item":"Auto Fog Clear","admin":"right","distributor":"right","user":"right"})
    }

}

