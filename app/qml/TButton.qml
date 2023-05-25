import QtQuick 2.15

Item {
    id: root

    property TStyleItem styleItem : Style.buttonDefault
    property TStyleItem styleItemDisabled : styleItem
    property TStyleItem styleItemPressed : styleItem
    property TStyleItem styleItemCurrent: enabled ? (isPressed ? styleItemPressed : styleItem) : styleItemDisabled
    property alias caption: label.text
    property string key:""
    property bool isPressed
    property string action: ""

    signal signalClicked(string aKey)
    signal signalPressed()
    signal signalReleased()
    signal signalLongPress(string aKey)
    signal signalUIAction(string name, variant value)

    height: styleItem.height
    width:  styleItem.width

    Rectangle{
        id:rect
        anchors.fill: parent
        radius: styleItemCurrent.radius
        color: styleItemCurrent.bgColor1
        border.color: styleItemCurrent.borderColor
        border.width: styleItemCurrent.borderWidth

        TLabel{
            id: label
            anchors.centerIn: parent
            styleFont: text.length >= 24 ? Style.size20pxbWhite : styleItemCurrent.fonts[0]
        }
    }

    MouseArea {
         anchors.fill: parent;
         onPressed: {root.signalPressed();isPressed = true}
         onReleased: {root.signalReleased();isPressed = false}
         onClicked:{
            root.signalClicked(root.key==="" ? root.caption : root.key)
            if(root.action != "")
                root.signalUIAction( root.action, root.key )
        }

         onPressAndHold: {
                root.signalLongPress(root.key==="" ? root.caption : root.key)
        }
    }

}
