import QtQuick 2.0
import QtQuick.Controls 2.12

RadioButton {
    id:radioButton
    checked: false
    property string labText
    onClicked: {
        if(radioButton.checked)
        {
            //swipeView.currentIndex = 1;
        }
    }
//    background: Rectangle{
//        width: 22
//        height: 22
//        radius: 11
//        color: "#e2e2e2"
//    }

    contentItem:Text {
        text: radioButton.labText
        font.family: mediumFont.name
        font.pixelSize: 16
        color: "#7a7b7b"
        verticalAlignment: Text.AlignVCenter
        anchors.left: parent.left
        anchors.leftMargin: 35
        anchors.verticalCenter: parent.verticalCenter
    }
    indicator: Rectangle {
        anchors.left: parent.left;
        anchors.verticalCenter: parent.verticalCenter
        width: 22
        height: 22
        antialiasing: true
        radius: 11
        color:"#e2e2e2"
        Rectangle {
            anchors.centerIn: parent
            width: 12
            height: 12
            antialiasing: true
            radius: 6
            color: "#0075bd"
            visible: radioButton.checked
        }
    }
}
