import QtQuick 2.0
import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.2
import QtQuick.Controls 2.15

Item {

    Component{
        id: accessoriesPage
        SetAccessoriesPage{}
    }

    Component{
        id: advancedPage
        SetAdvancedPage{}
    }

    Component{
        id: generalPage
        SetGeneralPage{}
    }

    Component{
        id: liuquidPage
        SetLiquidLevelPage{}
    }

    Component{
        id: networkPage
        SetNetworkPage{}
    }

    Component{
        id: servicePage
        SetSerivePage{}
    }

    Component{
        id: temperaturePage
        SetTemperaturePage{}
    }

    Component{
        id: displayPage
        SetDiaplayPage{}
    }



//    Component{
//        id: menuPage
//        SetMenuPage{}
//    }

    SetMenuPage {
        id: menuPage
        width: 448
        height: 591
        anchors.left: parent.left
        anchors.top: parent.top
        z: 2

        onVisibleChanged: {
            console.log(visible)
            console.log(menuView.currentItem)
            if (visible) {
                console.log(menuView.currentItem)
                if (menuView.currentItem == temperaturePage) {
                    menuPage.isMenu1 = true
                    console.log("11111")
                } else if (menuView.currentItem == liuquidPage) {
                    menuPage.isMenu2 = true
                } else if (menuView.currentItem == generalPage) {
                    menuPage.isMenu3 = true
                } else if (menuView.currentItem == advancedPage) {
                    menuPage.isMenu4 = true
                } else if (menuView.currentItem == displayPage) {
                    menuPage.isMenu5 = true
                } else if (menuView.currentItem == networkPage) {
                    menuPage.isMenu6 = true
                } else if (menuView.currentItem == accessoriesPage) {
                    menuPage.isMenu7 = true
                } else if (menuView.currentItem == servicePage) {
                    menuPage.isMenu8 = true
                }
            }
        }


        onSelectMenu: {
            console.log(value)
            if (value == 1) {
                menuPage.visible = false
                mask.visible = false
                menuView.push(temperaturePage)

            } else if (value == 2) {
                menuPage.visible = false
                mask.visible = false
                menuView.push(liuquidPage)

            } else if (value == 3) {
                menuPage.visible = false
                mask.visible = false
                menuView.push(generalPage)

            } else if (value == 4) {
                menuPage.visible = false
                mask.visible = false
                menuView.push(advancedPage)
            } else if (value == 5) {
                menuPage.visible = false
                mask.visible = false
                menuView.push(displayPage)
            } else if (value == 6) {
                menuPage.visible = false
                mask.visible = false
                menuView.push(networkPage)
            } else if (value == 7) {
                menuPage.visible = false
                mask.visible = false
                menuView.push(accessoriesPage)
            } else if (value == 8) {
                menuPage.visible = false
                mask.visible = false
                menuView.push(servicePage)
            }
        }
    }

    Rectangle {
        id: mask
        anchors.fill: parent
        color: "black"
        opacity: 0.2
        z: 1

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onClicked: x => {
            }
        }
    }

    StackView {
        id: menuView
        anchors.fill: parent
        initialItem: liuquidPage
        z:0

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
