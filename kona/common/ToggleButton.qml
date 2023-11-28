import QtQuick 2.0
import QtQuick 2.12

Rectangle {
    id: root
    width: 40
    height: 20
    color: "#0075C0"
    radius: 20

    property string buttonState:"right"

//    property string leftString
//    property string rightString
    signal toggleLeft //左开关信号
    signal toggleRight //右开关信号

    Rectangle {
        id: rect
        x: 2
        width: 16
        radius: 16
        color: rect.state === "left"? "#ffffff" : "#ffffff" //根据状态切换背景色
        state: root.buttonState
        anchors {
            top: parent.top
            bottom: parent.bottom
            topMargin: 2
            bottomMargin: 2
        }

        states: [
            State {
                name: "right"
                PropertyChanges {
                    target: rect
                    x: root.width - rect.width - 2
                }
            }

        ]

        transitions: [
            Transition {
                from: "*"
                to: "*"
                NumberAnimation { property: "x"; duration: 200 }
            }
        ]

//        Text {
//            id: label
//            anchors.centerIn: parent
//            text: rect.state === "left"? root.leftString : root.rightString
//            color: "white"
//            font.pointSize: 10
//        }
    }

    MouseArea {
        anchors.fill: parent
        onPressed: {
            //点开切换状态
            if(rect.state === "right"){
                rect.state = "left"
                root.color = "#DFDFDF"
                root.toggleRight()
            }else {
                rect.state = "right"
                root.color = "#0075C0"
                root.toggleLeft()
            }
        }
    }
}
