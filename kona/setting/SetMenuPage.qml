import QtQuick 2.0
import QtQuick.Layouts 1.14

Item {
    id: menuItem
    signal selectMenu(int value)
    property bool isMenu1
    property bool isMenu2
    property bool isMenu3
    property bool isMenu4
    property bool isMenu5
    property bool isMenu6
    property bool isMenu7
    property bool isMenu8

    ColumnLayout {
        spacing: 0

        SetMenuItem {
            id: menu1
            width: 389
            height: 74
            textValue: "Temperature"
            imagePath: "qrc:/images/settings-temperature.png"
            isChecked: menuItem.isMenu1
            onClicked: {
                menu1.isChecked = true
                menu2.isChecked = false
                menu3.isChecked = false
                menu4.isChecked = false
                menu5.isChecked = false
                menu6.isChecked = false
                menu7.isChecked = false
                menu8.isChecked = false
                menuItem.selectMenu(1)
            }
        }

        Rectangle {
            width: 389
            height: 1
            color: "#c4c4c4"
        }

        SetMenuItem {
            id: menu2
            width: 389
            height: 74
            textValue: "Liquid Level"
            imagePath: "qrc:/images/settings-liquid-level.png"
            isChecked: menuItem.isMenu2
            onClicked: {
                menu1.isChecked = false
                menu2.isChecked = true
                menu3.isChecked = false
                menu4.isChecked = false
                menu5.isChecked = false
                menu6.isChecked = false
                menu7.isChecked = false
                menu8.isChecked = false
                menuItem.selectMenu(2)
            }
        }

        Rectangle {
            width: 389
            height: 1
            color: "#c4c4c4"
        }

        SetMenuItem {
            id: menu3
            width: 389
            height: 74
            textValue: "General"
            imagePath: "qrc:/images/settings-general.png"
            isChecked: menuItem.isMenu3

            onClicked: {
                menu1.isChecked = false
                menu2.isChecked = false
                menu3.isChecked = true
                menu4.isChecked = false
                menu5.isChecked = false
                menu6.isChecked = false
                menu7.isChecked = false
                menu8.isChecked = false
                menuItem.selectMenu(3)
            }
        }

        Rectangle {
            width: 389
            height: 1
            color: "#c4c4c4"
        }

        SetMenuItem {
            id: menu4
            width: 389
            height: 74
            textValue: "Advanced"
            imagePath: "qrc:/images/settings-advanced.png"
            isChecked: menuItem.isMenu4
            onClicked: {
                menu1.isChecked = false
                menu2.isChecked = false
                menu3.isChecked = false
                menu4.isChecked = true
                menu5.isChecked = false
                menu6.isChecked = false
                menu7.isChecked = false
                menu8.isChecked = false
                menuItem.selectMenu(4)
            }
        }

        Rectangle {
            width: 389
            height: 1
            color: "#c4c4c4"
        }

        SetMenuItem {
            id: menu5
            width: 389
            height: 74
            textValue: "Display + Output"
            imagePath: "qrc:/images/settings-display-output.png"
            isChecked: menuItem.isMenu5
            onClicked: {
                menu1.isChecked = false
                menu2.isChecked = false
                menu3.isChecked = false
                menu4.isChecked = false
                menu5.isChecked = true
                menu6.isChecked = false
                menu7.isChecked = false
                menu8.isChecked = false
                menuItem.selectMenu(5)
            }
        }

        Rectangle {
            width: 389
            height: 1
            color: "#c4c4c4"
        }

        SetMenuItem {
            id: menu6
            width: 389
            height: 74
            textValue: "Network"
            imagePath: "qrc:/images/settings-network.png"
            isChecked: menuItem.isMenu6
            onClicked: {
                menu1.isChecked = false
                menu2.isChecked = false
                menu3.isChecked = false
                menu4.isChecked = false
                menu5.isChecked = false
                menu6.isChecked = true
                menu7.isChecked = false
                menu8.isChecked = false
                menuItem.selectMenu(6)
            }
        }

        Rectangle {
            width: 389
            height: 1
            color: "#c4c4c4"
        }

        SetMenuItem {
            id: menu7
            width: 389
            height: 74
            textValue: "Accessories"
            imagePath: "qrc:/images/settings-accessories.png"
            isChecked: menuItem.isMenu7
            onClicked: {
                menu1.isChecked = false
                menu2.isChecked = false
                menu3.isChecked = false
                menu4.isChecked = false
                menu5.isChecked = false
                menu6.isChecked = false
                menu7.isChecked = true
                menu8.isChecked = false
                menuItem.selectMenu(7)
            }
        }

        Rectangle {
            width: 389
            height: 1
            color: "#c4c4c4"
        }

        SetMenuItem {
            id: menu8
            width: 389
            height: 74
            textValue: "Service"
            imagePath: "qrc:/images/settings-service.png"
            isChecked: menuItem.isMenu8
            onClicked: {
                menu1.isChecked = false
                menu2.isChecked = false
                menu3.isChecked = false
                menu4.isChecked = false
                menu5.isChecked = false
                menu6.isChecked = false
                menu7.isChecked = false
                menu8.isChecked = true
                menuItem.selectMenu(8)
            }
        }

    }


}
