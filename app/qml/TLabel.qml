import QtQuick 2.15

import QtQuick.Controls 2.0
import "."

Label{
    id: root
    horizontalAlignment: Label.AlignHCenter
    verticalAlignment: Label.AlignVCenter
    wrapMode: Text.WordWrap
    property TStyleFont styleFont

    font: styleFont.font
    color: styleFont.color

    signal signalClicked(string aKey)
    signal signalPressed()
    signal signalReleased()

    MouseArea {
         anchors.fill: parent;
         onPressed:  {root.signalPressed()}
         onReleased: {root.signalReleased()}
         onClicked:  {root.signalClicked(root.text)}
     }
}
