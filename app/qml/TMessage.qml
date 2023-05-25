import QtQuick 2.15
import "."

Item {
    id: root

    z:1
    anchors.fill: parent
    property TStyleItem styleItem: Style.message
    property alias caption : labelCaption.text
    property alias text: labelMessage.text

    signal signalClicked()

    Rectangle{
        anchors.fill: parent
        color:"#000000"

        Rectangle{
            id: messageRect
            anchors.centerIn: parent
            width: styleItem.width
            height:styleItem.height
            color:styleItem.bgColor1
            border.color: styleItem.borderColor
            border.width: styleItem.borderWidth
            radius: styleItem.radius

            Item{
                id: contentContainer
                anchors.top: messageRect.top
                anchors.topMargin: 100
                width: parent.width
//                height: childrenRect.height

                TLabel{
                    id: labelCaption
                    anchors.top: parent.top
                    anchors.topMargin: 20
                    anchors.horizontalCenter: parent.horizontalCenter
                    styleFont:styleItem.fonts[0]
                }

                TLabel{
                   id: labelMessage
                   anchors {
                       left: parent.left
                       right: parent.right
                       top: labelCaption.bottom
                       leftMargin: 60
                       rightMargin: 60
                       topMargin: 16
                   }

                   styleFont:styleItem.fonts[1]
                   text: qsTr("Lorem ipsum dolor sit amet, consectetur adipiscing elit.Nulla \nplacerat purus turpis, ac porttitor enim sodales quis.")
               }

            }

            TButton{
                enabled: true
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 40
                anchors.horizontalCenter: parent.horizontalCenter

                styleItem: Style.buttonYes
                styleItemPressed: Style.buttonYesPressed
                onSignalClicked: {
                    root.signalClicked()
                }

                caption: qsTr("OK")
            }
        }
    }
}
