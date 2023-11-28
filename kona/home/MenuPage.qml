import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.5
import "../common"

Item {
    signal clicked(int val)
    id: drawer
    visible: false

    property string alarmsPath: "qrc:/images/main-manu-alarms.png"

    ColumnLayout {
        spacing: 0
        MenuButton {
            id: statusMenu
            color: "#0075bd"
            imagePath: "qrc:/images/status.png"
            onClicked:{
                alarmsMenu.color = "#9d9d9d"
                statusMenu.color = "#0075bd"
                logMenu.color = "#9d9d9d"
                setMenu.color = "#9d9d9d"
                drawer.clicked(1)
            }
        }

        Rectangle {
            width: 113
            height: 3
            color: "#ffffff"
        }

        MenuButton {
            id: alarmsMenu
            imagePath: drawer.alarmsPath
            onClicked:{
                alarmsMenu.color = "#0075bd"
                statusMenu.color = "#9d9d9d"
                logMenu.color = "#9d9d9d"
                setMenu.color = "#9d9d9d"
                drawer.clicked(2)
            }
        }

        Rectangle {
            width: 113
            height: 3
            color: "#ffffff"
        }

        MenuButton {
            id: logMenu
            imagePath: "qrc:/images/main-manu-logs.png"
            onClicked:{
                alarmsMenu.color = "#9d9d9d"
                statusMenu.color = "#9d9d9d"
                logMenu.color = "#0075bd"
                setMenu.color = "#9d9d9d"
                drawer.clicked(3)
            }
        }

        Rectangle {
            width: 113
            height: 3
            color: "#ffffff"
        }

        MenuButton {
            id: setMenu
            imagePath: "qrc:/images/main-manu-settings.png"
            onClicked:{
                alarmsMenu.color = "#9d9d9d"
                statusMenu.color = "#9d9d9d"
                logMenu.color = "#9d9d9d"
                setMenu.color = "#0075bd"
                drawer.clicked(4)
            }
        }
    }
}
