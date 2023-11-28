import QtQuick 2.0
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.2


Item {
    id: datePage
    signal dateClick()
    height: 102

    Component{
        id: weekPage
        DateWeekPage {
            width: 366
        }
    }

    Component{
        id: rangePage
        DateRangePage {
            width: datePage.width
            onDateClick: {
                datePage.dateClick()
            }
        }
    }



    ColumnLayout {
        spacing: 0
        RowLayout {
            spacing: 0
            TextButton {
                width: 90
                height: 50
                buttonName: "Week"
                textColor: "#7a7b7b"
                fontSize: 16
                fontFamily: mediumFont.name

                onClicked: {
                    nav1.visible = true
                    nav2.visible = false
                    nav3.visible = false
                    nav4.visible = false
                    stackView1.push(weekPage)
                }
            }

            Rectangle {
                color: "#e2e2e2"
                height: 22
                width: 2
            }

            TextButton {
                width: 90
                height: 50
                buttonName: "Month"
                textColor: "#7a7b7b"
                fontSize: 16
                fontFamily: mediumFont.name

                onClicked: {
                    nav1.visible = false
                    nav2.visible = true
                    nav3.visible = false
                    nav4.visible = false
                }
            }

            Rectangle {
                color: "#e2e2e2"
                height: 22
                width: 2
            }

            TextButton {
                width: 90
                height: 50
                buttonName: "Year"
                textColor: "#7a7b7b"
                fontSize: 16
                fontFamily: mediumFont.name

                onClicked: {
                    nav1.visible = false
                    nav2.visible = false
                    nav3.visible = true
                    nav4.visible = false
                }
            }

            Rectangle {
                color: "#e2e2e2"
                height: 22
                width: 2
            }

            TextButton {
                width: 90
                height: 50
                buttonName: "Range"
                textColor: "#7a7b7b"
                fontSize: 16
                fontFamily: mediumFont.name

                onClicked: {
                    nav1.visible = false
                    nav2.visible = false
                    nav3.visible = false
                    nav4.visible = true

                    stackView1.push(rangePage)
                }
            }
        }

        Rectangle {
            id: navRect
            color: "#e2e2e2"
            width: 366
            height:3

            Rectangle {
                id: nav1
                color: "#0075bd"
                width: 90
                height:3
                anchors.bottom: parent.bottom
                anchors.left: parent.left
            }

            Rectangle {
                id: nav2
                color: "#0075bd"
                width: 90
                height:3
                anchors.bottom: parent.bottom
                anchors.left: nav1.right
                anchors.leftMargin: 2
                visible: false
            }

            Rectangle {
                id: nav3
                color: "#0075bd"
                width: 90
                height:3
                anchors.bottom: parent.bottom
                anchors.left: nav2.right
                anchors.leftMargin: 2
                visible: false
            }

            Rectangle {
                id: nav4
                color: "#0075bd"
                width: 90
                height:3
                anchors.bottom: parent.bottom
                anchors.left: nav3.right
                anchors.leftMargin: 2
                visible: false
            }
        }

        StackView {
            id: stackView1
            height: 30
            initialItem: weekPage
            Layout.topMargin: 5

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





}
