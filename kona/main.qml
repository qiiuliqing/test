import QtQuick 2.15
import QtQuick.Window 2.15
import "./home"
import "./common"

Window {
    visible: true
    width: 1280
    height: 800
    title: qsTr("GUI")


    FontLoader {
            id: mediumFont
            source: "qrc:/images/fonts/Montserrat-Medium.ttf"
   }

    FontLoader {
            id: boldFont
            source: "qrc:/images/fonts/Montserrat-Bold.ttf"
   }

    FontLoader {
            id: regularFont
            source: "qrc:/images/fonts/Montserrat-Regular.ttf"
   }

    FontLoader {
            id: semiBoldFont
            source: "qrc:/images/fonts/Montserrat-SemiBold.ttf"
   }

//    Timer {
//        id: myTimer
//        interval: 3000 // 定时器触发的时间间隔，单位为毫秒
//        repeat: true // 是否重复触发定时器
//        running: true // 是否启动定时器
//        onTriggered: {
//            // 定时器触发时执行的操作
//            loginItem.visible = false
//            mainPage.visible = true
//        }
//    }


//    Item {
//        id: loginItem
//        width: 1280
//        height: 800
//        visible: true

//        Image {
//            id: back1
//            source: "qrc:/images/mve-logo.png"
//            anchors.horizontalCenter: parent.horizontalCenter
//            anchors.verticalCenter: parent.verticalCenter
//        }
//    }

//    KonaKeyboard {
//        x: 0
//        y: 800 - 500
//        height: 500
//    }

    MainPage {
        id:mainPage
        visible: true
    }
}
