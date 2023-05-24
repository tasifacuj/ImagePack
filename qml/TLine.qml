import QtQuick 2.0
import "."

Rectangle {
    objectName: "LINE"
    property TStyleItem styleItem: Style.line;
    property int size: styleItem.size

    color: styleItem.bgColor1
}
