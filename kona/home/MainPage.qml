import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.2
import "../common"
import "../setting"

Item {
    visible: true
    width: 1280
    height: 800


    property bool initShowControls:false

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            var date = new Date();
            var hours = date.getHours();
            var minutes = date.getMinutes();
            var seconds = date.getSeconds();
            dateText.text = date.toLocaleDateString(Qt.locale("en_AU"), "yyyy.MM.dd")
            timeText.text = date.toLocaleTimeString(Qt.locale("en_AU"), "hh:mm AP")

            //dateText.text = Qt.formatDateTime(new Date(), "yyyy.MM.dd")
            //timeText.text = Qt.formatDateTime(new Date(), "hh:mm AP")
        }
    }

    Item{
        id: item2
        width: 1280
        height: 800
        visible: true

        Rectangle {
                color: "#E2E2E2"
                anchors.fill: parent
       }

       Item {
           id: titleRect
           x:0
           y:0
           width: parent.width
           height: 80

           RowLayout{
                anchors.fill: parent
                spacing: 0

                ImageButton {
                    id:menuBtn
                    Layout.leftMargin: 24
                    width: 40
                    height: 32
                    imagePath: "qrc:/images/menu.png"
                    visible: initShowControls

                    onClicked:{
                        console.log("Login click")
                        var infoDialog = loginDialogCmpt.createObject(parent);
                        infoDialog.open();



                    }
                }

                Text {
                    Layout.leftMargin: 16
                    width: 160
                    height: 30
                    color: "#7b7a7a"
                    font.pixelSize: 28
                    text: "Unit ID"
                    font.family: mediumFont.name
                    font.weight: Font.Medium
                }

                Rectangle {
                    id: tmpRect1
                    Layout.fillWidth: true
                }


                Image {
                    id:loginImage
                    source: "qrc:/images/login.png"
                    fillMode:Image.Stretch
                    visible: initShowControls
                }

                Rectangle{
                    width: 150
                    height: 30
                    id: loginBtn
                    visible: initShowControls
                    color:"transparent"

                    Text {
                        id: nameText
                        width: 140
                        font.pixelSize: 20
                        font.family: mediumFont.name
                        font.weight: Font.Medium
                        anchors.centerIn: parent
                        color:"#7b7a7a"
                        text:"Login"
                        horizontalAlignment: Text.AlignLeft
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        anchors.right: parent.right
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: x => {
                                       var infoDialog = loginDialogCmpt.createObject(parent)
                                       infoDialog.open()
                        }
                    }
                }


//                TextButton {
//                    id: loginBtn
//                    width: 150
//                    height: 30
//                    buttonName: "Login"
//                    textColor: "#7b7a7a"
//                    fontSize: 20
//                    fontFamily: mediumFont.name
//                    fontWeight: Font.Medium
//                    visible: initShowControls
//                    horizontalCenter: Text.AlignLeft

//                    onClicked:{
//                        console.log("Login click")
//                        var infoDialog = loginDialogCmpt.createObject(parent)
//                        infoDialog.open()

//                    }
//                }

                Rectangle {
                    id: divider1
                    width: 2
                    height: 46
                    color: "#c4c4c4"
                    visible: initShowControls
                }

                Rectangle {
                    width: 104
                    height: parent.height
                    color: "transparent"
                    visible: initShowControls

                    Row {
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        spacing: 5

                        ImageButton {
                            id:locationBtn
                            width: 40
                            height: 40
                            imagePath: "qrc:/images/inventory.png"

                            onClicked:{
                                console.log("locationBtn click")
                                var locationDialog = locationDialogCmpt.createObject(parent);
                                locationDialog.open();
                            }
                        }

                        Text {
                            width: 20
                            height: 30
                            color: "#7b7A7A"
                            font.pixelSize: 28
                            text: "A"
                            font.family: mediumFont.name
                        }
                    }
                }

                Rectangle {
                    id: divider2
                    width: 2
                    height: 46
                    color: "#c4c4c4"
                    visible: initShowControls
                }

                Rectangle {
                    width: 104
                    height: parent.height
                    color: "transparent"
                    visible: initShowControls

                    ImageButton {
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        id:infoBtn
                        width: 43
                        height: 43
                        imagePath: "qrc:/images/information.png"

                        onClicked:{
                            console.log("infoBtn click")
                            var infoDialog = infoDialogCmpt.createObject(parent);
                            infoDialog.open();
                        }
                    }
                }

                Rectangle {
                    id: divider3
                    width: 2
                    height: 46
                    color: "#c4c4c4"
                }

                Rectangle {
                    id: batteryRect
                    width: 104
                    height: parent.height
                    color: "transparent"
                    visible: initShowControls

                    Image {
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:/images/battery-low.png"
                        fillMode:Image.Stretch
                    }
                }

                Rectangle {
                    id: divider4
                    width: 2
                    height: 46
                    color: "#c4c4c4"
                    visible: initShowControls
                }

                Rectangle {
                    width: 104
                    height: parent.height
                    color: "transparent"

                    Image {
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        source: "qrc:/images/wifi-network-4.png"
                        fillMode:Image.Stretch
                    }
                }

                Rectangle {
                    width: 2
                    height: 46
                    color: "#c4c4c4"
                }

                Rectangle {
                    width: 182
                    height: parent.height
                    color: "transparent"

                    Column {
                        spacing: 0
                        topPadding: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                        Text {
                            id: dateText
                            width: 120
                            height: 20
                            color: "#7b7A7A"
                            font.pixelSize: 24
                            text: "2018.02.08"
                            font.family: mediumFont.name
                            font.weight: Font.Medium
                            horizontalAlignment: Text.AlignRight
                        }

                        Text {
                            id: timeText
                            width: 120
                            color: "#7b7A7A"
                            font.pixelSize: 24
                            text: "02:52 PM"
                            font.family: boldFont.name
                            //font.weight: Font.Medium
                            font.weight: Font.Bold
                            horizontalAlignment: Text.AlignRight
                            //horizontalAlignment: Text.Right
                        }
                    }
                }
           }
       }

       MenuPage{
           id: menuDrawer
           x:0
           y: 80
           width: 113
           height: 590
           visible: false

           onClicked: {
               console.log(val)
               if (val == 1){
                   statusPgae.isTip = false
                   statusPgae.background = "#F5F5F5"
                   statusPgae.labColor = "#9d9d9d"
                   statusPgae.valueColor = "#7b7a7a"
                   statusPgae.lineColor = "#e2e2e2"
                   statusPgae.infoColor = "#F5F5F5"
                   menuDrawer.alarmsPath = "qrc:/images/main-manu-alarms.png"
                   bottomPage.addLogFlag = false
                   bottomPage.downloadFlag = false
                   menuView.push(homePage)
               } else if (val == 2) {
                    statusPgae.isTip = true
                    statusPgae.tipText = "High LN2 Level Alarm will unmute in 30:00:00"
                    statusPgae.background = "#EC1C23"
                    statusPgae.labColor = "#FFFFFF"
                    statusPgae.valueColor = "#FFFFFF"
                    statusPgae.lineColor = "#FFFFFF"
                   statusPgae.infoColor = "#EC1C23"
                    menuDrawer.alarmsPath = "qrc:/images/alarm-alert-red.png"
                   bottomPage.addLogFlag = false
                   bottomPage.downloadFlag = false
                    menuView.push(alarmsPage)
               } else if (val == 3) {
                   statusPgae.isTip = true
                   statusPgae.tipText = "Filling 00:35:00"
                   statusPgae.background = "#0F9FA2"
                   statusPgae.labColor = "#FFFFFF"
                   statusPgae.valueColor = "#FFFFFF"
                   statusPgae.lineColor = "#FFFFFF"
                   statusPgae.infoColor = "#6FC4C7"
                   menuDrawer.alarmsPath = "qrc:/images/alarm-alert-red.png"
                   menuView.push(logPage)
                   bottomPage.addLogFlag = true
                   bottomPage.downloadFlag = true
               } else if (val == 4) {
                   statusPgae.isTip = false
                   statusPgae.background = "#F5F5F5"
                   statusPgae.labColor = "#9d9d9d"
                   statusPgae.valueColor = "#7b7a7a"
                   statusPgae.lineColor = "#e2e2e2"
                   menuDrawer.alarmsPath = "qrc:/images/main-manu-alarms.png"
                   menuView.push(settingPages)
               }
           }


       }

       Rectangle {
           id: midRect
           x: 0
           y: 80
           width: 1280
           height: 590
           color: "#ffffff"
           z: 1

           StackView {
               id: menuView
               anchors.fill: parent
               initialItem: initSetupPage
               z: 1

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

           StatusPage {
               id: statusPgae
               anchors.left: parent.left
               anchors.bottom: menuView.bottom
               anchors.right:  parent.right
               height: 50
               visible: initShowControls
               z:0
           }

       }
       BottomPage {
           id:bottomPage
           height: 130
           width: parent.width
           anchors.bottom: parent.bottom
           initFlag: true

           onFinish: {
               menuView.push(homePage)
               bottomPage.initFlag = false
               initShowControls = true
           }

           onLogAdd: {
                bottomPage.addLogFlag = false
                bottomPage.downloadFlag = false
                bottomPage.editBackFlag = true
                bottomPage.editLogFlag = true
                bottomPage.saveLogFlag = true
                menuView.push(editLogPage)
           }

           onLogEdit: {
               var dialog = keyBoardDialogCmpt.createObject(parent);
               dialog.y = 300
               dialog.open();
           }

       }


       Component{
           id: homePage
           HomePage{}
       }

       Component{
           id: alarmsPage
           AlarmsPage{
               onAlarmsStatus: {
                   if (val == 0) {

                   } else if (val == 1) {
                       statusPgae.isTip = true
                       statusPgae.tipText = "High LN2 Level Alarm will unmute in 30:00:00"
                       statusPgae.background = "#EC1C23"
                       statusPgae.labColor = "#FFFFFF"
                       statusPgae.valueColor = "#FFFFFF"
                       statusPgae.lineColor = "#FFFFFF"
                       menuDrawer.alarmsPath = "qrc:/images/alarm-alert-red.png"

                   } else if (val == 2) {
                       statusPgae.isTip = true
                       statusPgae.tipText = "High LN2 Level Alarm"
                       statusPgae.background = "#F7D02F"
                       statusPgae.labColor = "#9d9d9d"
                       statusPgae.valueColor = "#7b7a7a"
                       statusPgae.lineColor = "#7b7a7a"
                       menuDrawer.alarmsPath = "qrc:/images/alarm-alert-yellow.png"
                   }
               }
           }
       }

       Component{
           id: logPage
           LogPage{
               onStatusButtonType: {
                   if (value == 1) {
                       bottomPage.addLogFlag = true
                       bottomPage.downloadFlag = true
                   } else if (value == 2) {
                       //bottomPage.addLogFlag = false
                       //bottomPage.downloadFlag = false
                   } else if (value == 3) {
                       bottomPage.addLogFlag = false
                       bottomPage.downloadFlag = true
                   }
               }
           }
       }

       Component{
           id: initSetupPage
           InitialSetupPage{}
       }

       Component{
           id: editLogPage
           NotesEditPage{}
       }

       Component {
           id: settingPages
           SetMainPage {}
       }



       /* 提示对话框 */
       Component {
           id: loginDialogCmpt
           LoginDialog {
               onClosed: destroy()
               onLogined: {
                   menuDrawer.visible = true
                   midRect.x = 113
                   midRect.width = 1280 - 113
                   menuBtn.visible = false
                   nameText.text = value
               }
           }
       }

       Component {
           id: locationDialogCmpt
           LocationDialog {
               onClosed: destroy()
           }
       }

       Component {
           id: infoDialogCmpt
           InfoDialog {
               onClosed: destroy()
           }
       }

       Component {
           id: numberDialogCmpt
           NumberInputPopup {
               onClosed: destroy()
           }
       }

       /* 提示对话框 */
       Component {
           id: keyBoardDialogCmpt
           KonaKeyboard {
               onClosed: destroy()
           }
       }

    }

}
