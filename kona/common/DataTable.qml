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
                model: ["Date/Time","Temp A (°C)","Temp B (°C)", "LN2 Level (in)"]

                Rectangle{
                    width: {
                        var w = 0
                        switch(index){
                        case 0: w = 336;break;
                        case 1: w = 256;break;
                        case 2: w = 256;break;
                        case 3: w = 256;break;
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

            TableModelColumn{display: "date"}
            TableModelColumn{display: "tempa"}
            TableModelColumn{display: "tempb"}
            TableModelColumn{display: "ln2"}

        }
        delegate:DelegateChooser{

            DelegateChoice{
                column: 0
                delegate: Rectangle{
                    color: "#ffffff"
                    implicitWidth: 336
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
                    implicitWidth: 256
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
                    implicitWidth: 256
                    implicitHeight: 50
                    //clip: true

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
                        elide: Text.ElideRight
                    }
                }
            }
            DelegateChoice{
                column: 3
                delegate: Rectangle{
                    color: "#ffffff"
                    implicitWidth: 256
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
                        anchors.left: parent.left
                        anchors.leftMargin: 15
                        anchors.verticalCenter: parent.verticalCenter
                        //font.weight: Font.Light
                        font.pointSize: 12
                        font.family: regularFont.name
                        color: "#7b7a7a"
                        elide: Text.ElideRight
                    }
                }
            }
        }
    }

    Component.onCompleted: {
        tableModel.appendRow({"date":"2022.02.02 09:23:00","tempa":"-160.0","tempb":"-150.0","ln2":"10.0"})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","tempa":"-160.0","tempb":"-150.0","ln2":"10.0"})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","tempa":"-160.0","tempb":"-150.0","ln2":"10.0"})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","tempa":"-160.0","tempb":"-150.0","ln2":"10.0"})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","tempa":"-160.0","tempb":"-150.0","ln2":"10.0"})
        tableModel.appendRow({"date":"2022.02.02 09:23:00","tempa":"-160.0","tempb":"-150.0","ln2":"10.0"})
    }

}

