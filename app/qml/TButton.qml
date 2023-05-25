import QtQuick 2.15

Item {
    id: root

    // take
    property TStyleItem styleItem : Style.buttonDefault
    property TStyleItem styleItemDisabled : styleItem
    property TStyleItem styleItemPressed : styleItem
    property TStyleItem styleItemCurrent: enabled ? (isPressed ? styleItemPressed : styleItem) : styleItemDisabled
    property alias caption: label.text
    property string key:""
    property bool isPressed
    property string action: ""

    signal signalClicked()
    signal signalPressed()
    signal signalReleased()
    signal signalLongPress(string aKey)

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
            styleFont: styleItemCurrent.fonts[0]
        }
    }

    MouseArea {
         anchors.fill: parent;
         onPressed: {root.signalPressed();isPressed = true}
         onReleased: {root.signalReleased();isPressed = false}
         onClicked:{
            root.signalClicked()
        }
    }

}
