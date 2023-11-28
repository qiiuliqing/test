import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.14

Item {
    RowLayout {
        spacing: 0
        ColumnLayout {
            spacing: 10
            Layout.leftMargin: 30
            Layout.topMargin: 80
            Text {
                height: 10
                width: 100
                color: "#7b7a7a"
                text: qsTr("Notes")
                font.family: mediumFont.name
                font.pixelSize: 24
                font.bold: true
                Layout.leftMargin: 20
            }

            /* 水平分隔线 */
            Rectangle {
                width: 810
                height: 2
                color: "#e2e2e2"

            }

            Text {
                font.pointSize: 12
                font.family: regularFont.name
                color: "#7b7a7a"
                Layout.fillHeight: true
                Layout.leftMargin: 20
                text: "Due to the temperature level Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do\neiusmod tempor incididunt ut labore er dolore magna aliqua. Ut enim ad minim veniam,quis\nnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
            }

        }

        ColumnLayout {
            spacing: 10
            Layout.leftMargin: 30
            Layout.topMargin: 80

            Text {
                height: 10
                width: 100
                color: "#7b7a7a"
                text: qsTr("Edit History")
                font.family: mediumFont.name
                font.pixelSize: 24
                font.bold: true
                Layout.leftMargin: 10
            }

            /* 水平分隔线 */
            Rectangle {
                width: 244
                height: 2
                color: "#e2e2e2"
            }

            Rectangle{
                id:dropDown
                width: 244
                height: 400
                visible: true

                ListModel {
                    id: listModel
                    ListElement {
                        itemHeight: 90
                        user: "User1234"
                        date: "2023.01.30"
                        info1: "<b>Added:</b> \"Ut enim ad minnim veniam\""
                        info2: ""
                    }

                    ListElement {
                        itemHeight: 90
                        user: "User1234"
                        date: "2023.01.30"
                        info1: "<b>Deleted:</b> \"Ut enim ad minnim veniam\""
                        info2: ""
                    }

                    ListElement {
                        itemHeight: 150
                        user: "User1234"
                        date: "2023.01.30"
                        info1: "<b>Replaced:</b> \"Ut enim ad minnim veniam\""
                        info2: "<b>With:</b> \"Ut enim ad minnim veniam\""
                    }

                    ListElement {
                        itemHeight: 150
                        user: "User1234"
                        date: "2023.01.30"
                        info1: "<b>Replaced:</b> \"Ut enim ad minnim veniam\""
                        info2: "<b>With:</b> \"Ut enim ad minnim veniam\""
                    }
                }

                ListView{
                    id:listviewer
                    width: 244
                    height: parent.height
                    model: listModel
                    clip: true
                    currentIndex: 0
                    delegate: Rectangle{
                        id: listbg
                        width: dropDown.width
                        height: itemHeight
                        color: "transparent"

                        RowLayout {
                            id: row1
                            height: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            anchors.top: parent.top
                            anchors.topMargin: 8
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            Text {
                                width: 100
                                text: user
                                font.pixelSize: 16
                                font.family: mediumFont.name
                                color: "#7a7b7b"
                                font.bold: true
                                Layout.fillWidth: true
                            }

                            Text {
                                width: 94
                                text: date
                                font.pixelSize: 16
                                font.family: mediumFont.name
                                color: "#7a7b7b"
                                font.bold: true
                            }
                        }

                        Text {
                            id: text1
                            width: 200
                            text: info1
                            font.pixelSize: 16
                            font.family: regularFont.name
                            color: "#7a7b7b"
                            anchors.top: row1.bottom
                            anchors.topMargin: 20
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            wrapMode: Text.Wrap
                        }

                        Text {
                            id: text2
                            width: 200
                            text: info2
                            font.pixelSize: 16
                            font.family: regularFont.name
                            color: "#7a7b7b"
                            anchors.top: text1.bottom
                            anchors.topMargin: 10
                            anchors.left: parent.left
                            anchors.leftMargin: 10
                            wrapMode: Text.Wrap
                            visible: {
                                if (info2.length > 0) {
                                    return true
                                } else {
                                    return false
                                }
                            }
                        }

                        Rectangle {
                            width: 244
                            height: 1
                            color: "#e2e2e2"
                            anchors.bottom: parent.bottom
                        }
                        MouseArea {
                            anchors.fill: parent;
                            onClicked: {
                            }
                        }
                    }

                    ScrollBar.vertical: bar
                }

                ScrollBar {
                    id: bar
                    active: true
                    anchors {
                        left: listviewer.left
                        top: listviewer.top
                        bottom: listviewer.bottom
                        leftMargin: dropDown.width
                    }
                }
            }


        }

    }


}
