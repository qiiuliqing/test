import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    visible: true
    width: 800
    height: 430
    title: qsTr("GUI")

    FontLoader {
            id: customFont
            source: "qrc:/images/Montserrat-Medium.otf" // 根据实际的路径和文件名修改
   }

    Timer {
        id: myTimer
        interval: 3000 // 定时器触发的时间间隔，单位为毫秒
        repeat: true // 是否重复触发定时器
        running: true // 是否启动定时器
        onTriggered: {
            // 定时器触发时执行的操作
            item1.visible = false
            item2.visible = true
        }
    }


    Item {
        id: item1
        width: 800
        height: 430
        visible: true

        Image {
            id: back1
            width: 200
            height: 200
            source: "qrc:/images/mve-logo.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
        }
    }

    Item{
        id: item2
        width: 800
        height: 430
        visible: false

        Rectangle {
                color: "#E2E2E2"
                anchors.fill: parent
       }

       Text {
           x: 10
           y: 5
           width: 100
           height: 30
           color: "#797A7A"
           font.pixelSize: 20
           text: "Unit ID"
           font.family: customFont.name
       }

       Image {
           x: 280
           y: 10
           width: 20
           height: 20
           source: "qrc:/images/login.png"
           fillMode:Image.Stretch
       }

       Text {
           x: 305
           y: 5
           width: 100
           height: 30
           color: "#797A7A"
           font.pixelSize: 12
           text: "User 1234"
           font.family: customFont.name
           verticalAlignment: Text.AlignVCenter
       }

       Rectangle {
           x:380
           y: 10
           width: 1
           height: 20
           color: "#CECECE"
       }

       Image {
           x: 390
           y: 8
           width: 28
           height: 28
           source: "qrc:/images/freezer-location-1.png"
           fillMode:Image.Stretch
       }

       Text {
           x: 420
           y: 5
           width: 20
           height: 30
           color: "#797A7A"
           font.pixelSize: 25
           text: "A"
           font.family: customFont.name
           verticalAlignment: Text.AlignVCenter
       }

       Rectangle {
           x:450
           y: 10
           width: 1
           height: 20
           color: "#CECECE"
       }

       Image {
           x: 475
           y: 5
           width: 30
           height: 30
           source: "qrc:/images/information.png"
           fillMode:Image.Stretch
       }

       Rectangle {
           x:520
           y: 10
           width: 1
           height: 20
           color: "#CECECE"
       }

       Image {
           x: 550
           y: 5
           width: 20
           height: 32
           source: "qrc:/images/battery-25.png"
           fillMode:Image.Stretch
       }

       Rectangle {
           x:590
           y: 10
           width: 1
           height: 20
           color: "#CECECE"
       }

       Image {
           x: 610
           y: 10
           width: 20
           height: 20
           source: "qrc:/images/wifi-network-4.png"
           fillMode:Image.Stretch
       }

       Rectangle {
           x:650
           y: 10
           width: 1
           height: 20
           color: "#CECECE"
       }

       Text {
           x: 680
           y: 0
           width: 100
           height: 15
           color: "#797A7A"
           font.pixelSize: 15
           text: "2018.02.08"
           font.family: customFont.name
       }

       Text {
           x: 680
           y: 18
           width: 100
           height: 15
           color: "#797A7A"
           font.pixelSize: 15
           text: "02:52 PM"
           font.family: customFont.name
           font.bold: true
       }

       Rectangle {
           x:0
           y:40
           width: 80
           height: 100
           color: "#0074BD"

           Image {
               width: 60
               height: 75
               anchors.centerIn: parent
               source: "qrc:/images/status.png"
               fillMode:Image.Stretch
           }
       }

       Rectangle {
           x:0
           y:140
           width: 80
           height: 2
           color: "#ffffff"
       }

       Rectangle {
           x:0
           y:142
           width: 80
           height: 100
           color: "#9D9D9D"

           Image {
               width: 60
               height: 75
               anchors.centerIn: parent
               source: "qrc:/images/main-manu-alarms.png"
               fillMode:Image.Stretch
           }
       }

       Rectangle {
           x:0
           y:242
           width: 80
           height: 2
           color: "#ffffff"
       }

       Rectangle {
           x:0
           y:244
           width: 80
           height: 100
           color: "#9D9D9D"

           Image {
               width: 60
               height: 75
               anchors.centerIn: parent
               source: "qrc:/images/main-manu-logs.png"
               fillMode:Image.Stretch
           }
       }

       Rectangle {
           x:0
           y:344
           width: 80
           height: 2
           color: "#ffffff"
       }

       Rectangle {
           x:0
           y:346
           width: 80
           height: 100
           color: "#9D9D9D"

           Image {
               width: 60
               height: 75
               anchors.centerIn: parent
               source: "qrc:/images/main-manu-settings.png"
               fillMode:Image.Stretch
           }
       }

       Rectangle{
           x:80
           y:40
           width: 720
           height: 350
           color: "#FFFFFF"

           Image {
               x: 55
               y: 30
               width: 20
               height: 20
               source: "qrc:/images/freezer-status.png"
               fillMode:Image.Stretch
           }

           Text {
               x:80
               y:30
               width: 240
               height: 20
               color: "#959595"
               text: qsTr("Freezer Status")
               font.family: customFont.name
               font.pixelSize: 20
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

           Rectangle {
               x: 502
               y: 2
               width: 240
               height: 80
               color: "#F6F6F6"
           }

           Rectangle {
               x: 260
               y: 2
               width: 240
               height: 80
               color: "#F6F6F6"

           }

           Image {
               x: 300
               y: 30
               width: 15
               height: 20
               source: "qrc:/images/settings-temperature.png"
               fillMode:Image.Stretch
           }

           Text {
               x:320
               y:30
               width: 240
               height: 20
               color: "#959595"
               text: qsTr("Temp Graph")
               font.family: customFont.name
               font.pixelSize: 20
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

           Image {
               x: 535
               y: 30
               width: 20
               height: 20
               source: "qrc:/images/ln2-graph.png"
               fillMode:Image.Stretch
           }

           Text {
               x:560
               y:30
               width: 240
               height: 20
               color: "#959595"
               text: qsTr("LN2 Graph")
               font.family: customFont.name
               font.pixelSize: 20
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

           Text {
               x:80
               y:180
               width: 240
               height: 60
               color: "#7B459B"
               text: qsTr("-196.6°C")
               font.family: customFont.name
               font.pixelSize: 30
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

           Image {
               x: 110
               y: 280
               width: 15
               height: 15
               source: "qrc:/images/alarm-gray.png"
               fillMode:Image.Stretch
           }


           Text {
               x:130
               y:280
               width: 240
               height: 15
               color: "#BFBFBF"
               text: qsTr("-50°C")
               font.family: customFont.name
               font.pixelSize: 15
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

           Text {
               x:320
               y:180
               width: 240
               height: 60
               color: "#0072BC"
               text: qsTr("-196.6°C")
               font.family: customFont.name
               font.pixelSize: 30
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

           Image {
               x: 350
               y: 280
               width: 15
               height: 15
               source: "qrc:/images/alarm-gray.png"
               fillMode:Image.Stretch
           }


           Text {
               x:370
               y:280
               width: 240
               height: 15
               color: "#BFBFBF"
               text: qsTr("-200°C")
               font.family: customFont.name
               font.pixelSize: 15
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

           Text {
               x:580
               y:180
               width: 240
               height: 60
               color: "#0FA0A5"
               text: qsTr("10.0")
               font.family: customFont.name
               font.pixelSize: 30
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

           Rectangle{
               x: 560
               y: 265
               color: "#E9E9E9"
               width: 140
               height: 8
           }

           Rectangle {
               x: 560
               y: 265
               color: "#0E9FA4"
               width: 80
               height: 8
           }

           Image {
               x: 560
               y: 280
               width: 15
               height: 15
               source: "qrc:/images/alarm-gray.png"
               fillMode:Image.Stretch
           }


           Text {
               x:575
               y:280
               width: 240
               height: 15
               color: "#BFBFBF"
               text: qsTr("7.0 in")
               font.family: customFont.name
               font.pixelSize: 15
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

           Image {
               x: 645
               y: 280
               width: 15
               height: 15
               source: "qrc:/images/alarm-gray.png"
               fillMode:Image.Stretch
           }


           Text {
               x:660
               y:280
               width: 240
               height: 15
               color: "#BFBFBF"
               text: qsTr("36.0 in")
               font.family: customFont.name
               font.pixelSize: 15
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
           }

       }

       Rectangle {
           x: 80
           y: 160
           height: 40
           width: 720

           Image {
               x: 120
               height: 35
               width: 30
               anchors.verticalCenter: parent.verticalCenter
               source: "qrc:/images/temp-a.png"
               fillMode:Image.Stretch
           }

           Image {
               x: 360
               height: 35
               width: 35
               anchors.verticalCenter: parent.verticalCenter
               source: "qrc:/images/temp-b.png"
               fillMode:Image.Stretch
           }

           Image {
               x: 600
               height: 35
               width: 30
               anchors.verticalCenter: parent.verticalCenter
               source: "qrc:/images/ln2.png"
               fillMode:Image.Stretch
           }
       }


       Rectangle {
           x: 80
           y: 390
           height: 40
           width: 720
           color: "#F2F2F2"

           Text {
               x: 300
               height: 40
               width: 150
               color: "#BFBFBF"
               font.family: customFont.name
               font.pixelSize: 15
               anchors.verticalCenter: parent.verticalCenter
               verticalAlignment: Text.AlignVCenter
               text: qsTr("Temp A -196.6°C")
           }

           Rectangle {
               x:440
               width: 1
               height: 15
               color: "#DADADA"
               anchors.verticalCenter: parent.verticalCenter
           }

           Text {
               x: 450
               height: 40
               width: 150
               color: "#BFBFBF"
               font.family: customFont.name
               font.pixelSize: 15
               anchors.verticalCenter: parent.verticalCenter
               verticalAlignment: Text.AlignVCenter
               text: qsTr("Temp B -196.6°C")
           }

           Rectangle {
               x:590
               width: 1
               height: 15
               color: "#DADADA"
               anchors.verticalCenter: parent.verticalCenter
           }

           Text {
               x: 600
               height: 40
               width: 150
               color: "#BFBFBF"
               font.family: customFont.name
               font.pixelSize: 15
               anchors.verticalCenter: parent.verticalCenter
               verticalAlignment: Text.AlignVCenter
               horizontalAlignment: Text.AlignLeft
               text: qsTr("Level 10 in")
           }
       }
    }

}
