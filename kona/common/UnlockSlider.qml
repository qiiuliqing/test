import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4


Slider {
      id: control
      value: 0
      height: 80

      property string hint

      background: Rectangle {
          x: control.leftPadding
          y: control.topPadding + control.availableHeight / 2 - height / 2
          width: control.width
          height: 80
          color: "#ED1C24"

          Text {
              x:0
              y:0
              width: control.width
              height: 80
              color: "#ffffff"
              text: control.hint
              font.family: mediumFont.name
              font.pixelSize: 24
              verticalAlignment: Text.AlignVCenter
              horizontalAlignment: Text.AlignHCenter
          }

          Rectangle {
              x: 0
              y:0
              width: control.position * control.width
              height: 80
              color: "#7B7A7A"
          }
      }

      handle: Rectangle {
          x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
          y: control.topPadding + control.availableHeight / 2 - height / 2
          implicitWidth: 80
          implicitHeight: 80
          color:"#7B7A7A"
//          color: control.pressed ? "#f0f0f0" : "#f6f6f6"

          Image {
              source: "qrc:/images/double-arrow.png"
              fillMode:Image.Stretch
              anchors.verticalCenter: parent.verticalCenter
              anchors.horizontalCenter: parent.horizontalCenter
          }
      }

}


