import QtQuick 2.0
import QtQuick.Layouts 1.15
import "../common"

Item {
    id: item1
    signal finish()
    signal logAdd()
    signal logEdit()
    signal logSave()

    property bool initFlag
    property bool addLogFlag
    property bool downloadFlag
    property bool editBackFlag:false
    property bool editLogFlag:false
    property bool saveLogFlag:false

    Component {
        id: selectDialogCmpt
        SelectDownloadDataDialog {
            onClosed: destroy()
            onNext: {
                var dialog = connectDialogCmpt.createObject(item1)
                dialog.open()
            }
        }
    }

    Component {
        id: connectDialogCmpt
        ConnectUsbDialog {
            onClosed: {
                destroy()
                var dialog = locationDialogCmpt.createObject(item1)
                dialog.open()
            }

        }
    }

    Component {
        id: downloadDialogCmpt
        DownloadDoneDialog {
            onClosed: destroy()
        }
    }


    Component {
        id: locationDialogCmpt
        SelectStorageLocationDialog {
            onClosed: destroy()
            onDownload: {
                var dialog = downloadDialogCmpt.createObject(item1)
                dialog.open()
            }
        }
    }

    Rectangle {
        id: backBtn
        width: 80
        height: 80
        visible: item1.editBackFlag
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 25

        Image {
            source: "qrc:/images/back.png"
            fillMode:Image.Stretch
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
            }
        }
    }


    RowLayout {
        spacing: 30
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.verticalCenter: parent.verticalCenter

        Rectangle {
            id: setupBtn1
            width: 295
            height: 80
            color: "#F0F0F0"
            visible: item1.initFlag

            Row {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -8
                spacing: 2
                Image {
                    id: image1
                    source: "qrc:/images/check-gray.png"
                    fillMode:Image.Stretch
                }

                Text {
                    color: "#B8B8B8"
                    text: qsTr("Finish Setup")
                    font.family: mediumFont.name
                    font.pixelSize: 24
                    anchors.verticalCenter: image1.verticalCenter
                }
            }

            MouseArea {
                anchors.fill: parent;
                onClicked: {
                }
            }
        }

        Rectangle {
            id: setupBtn2
            width: 295
            height: 80
            visible: item1.initFlag

            Row {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -8
                spacing: 2
                Image {
                    id: image2
                    source: "qrc:/images/check-gray.png"
                    fillMode:Image.Stretch
                }

                Text {
                    color: "#7b7a7a"
                    text: qsTr("Finish Setup")
                    font.family: mediumFont.name
                    font.pixelSize: 24
                    anchors.verticalCenter: image2.verticalCenter
                }
            }

            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    item1.finish()
                }
            }
        }

        Rectangle {
            id: addLogBtn
            width: 295
            height: 80
            visible: item1.addLogFlag

            Row {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -8
                spacing: 2
                Image {
                    id: image3
                    source: "qrc:/images/log-add.png"
                    fillMode:Image.Stretch
                }

                Text {
                    color: "#7b7a7a"
                    text: qsTr("Add Log")
                    font.family: mediumFont.name
                    font.pixelSize: 24
                    anchors.verticalCenter: image3.verticalCenter
                }
            }

            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    item1.logAdd()
                    //item1.finish()
                }
            }
        }

        Rectangle {
            id: downloadLogBtn
            width: 295
            height: 80
            visible: item1.downloadFlag

            Row {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -8
                spacing: 2
                Image {
                    id: image4
                    source: "qrc:/images/import.png"
                    fillMode:Image.Stretch
                }

                Text {
                    color: "#7b7a7a"
                    text: qsTr("Download")
                    font.family: mediumFont.name
                    font.pixelSize: 24
                    anchors.verticalCenter: image4.verticalCenter
                }
            }

            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    //item1.finish()
                    var dialog = selectDialogCmpt.createObject(parent)
                    dialog.open()
                }
            }
        }

        Rectangle {
            id: editLogBtn
            width: 295
            height: 80
            visible: item1.editLogFlag

            Row {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -8
                spacing: 2
                Image {
                    id: image5
                    source: "qrc:/images/log-edit.png"
                    fillMode:Image.Stretch
                }

                Text {
                    color: "#7b7a7a"
                    text: qsTr("Edit Log")
                    font.family: mediumFont.name
                    font.pixelSize: 24
                    anchors.verticalCenter: image5.verticalCenter
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    item1.logEdit()
                    //item1.finish()
//                    var dialog = selectDialogCmpt.createObject(parent)
//                    dialog.open()
                }
            }
        }

        Rectangle {
            id: saveLogBtn
            width: 295
            height: 80
            visible: item1.saveLogFlag

            Row {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: -8
                spacing: 2
                Image {
                    id: image6
                    source: "qrc:/images/log-save.png"
                    fillMode:Image.Stretch
                }

                Text {
                    color: "#7b7a7a"
                    text: qsTr("Save Log")
                    font.family: mediumFont.name
                    font.pixelSize: 24
                    anchors.verticalCenter: image6.verticalCenter
                }
            }

            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    //item1.finish()
//                    var dialog = selectDialogCmpt.createObject(parent)
//                    dialog.open()
                }
            }
        }
    }



}
