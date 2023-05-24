import QtQuick 2.15
import "."

Rectangle {
    id: root

    property bool isPressed:false
    property alias fileName: nameLabel.text
    property alias size: sizeLabel.text
    property alias status: statusLabel.text


    property TStyleItem styleItem: Style.itemSettingB
    property TStyleItem styleItemPressed: Style.itemSettingBPressed
    property TStyleItem styleItemCaption: Style.itemSettingCaption

    property TStyleItem styleItemCurrent: isPressed ? styleItemPressed : styleItem

    signal signalClicked()

    anchors.left: parent.left
    anchors.right: parent.right


    width: Math.max(styleItemCurrent.width, parent.width)
    height: visible ? Math.max(styleItemCurrent.height, nameLabel.height+styleItem.spacing) : 0

    color: styleItemCurrent.bgColor1
    radius: styleItemCurrent.radius

    Item{
        anchors.fill : parent

        Row{
            id: dataRow
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            spacing: styleItemCurrent.spacing
            anchors.rightMargin: spacing
            anchors.leftMargin:  40

            TLabel{
                id: nameLabel
                anchors.verticalCenter: parent.verticalCenter
                styleFont: styleItemCaption.fonts[0]
            }

            TLabel{
                id: sizeLabel
                anchors.verticalCenter: parent.verticalCenter
                styleFont: styleItemCaption.fonts[0]
            }

            TLabel{
                id: statusLabel
                anchors.verticalCenter: parent.verticalCenter
                styleFont: styleItemCaption.fonts[0]
            }
        }

        THline{
            id: line
            anchors.bottom: parent.bottom
        }

        MouseArea {
             anchors.fill: parent;
             onPressed: {isPressed = true}
             onReleased: {isPressed = false}
             onClicked:{
                root.signalClicked()
             }
         }
    }


}
