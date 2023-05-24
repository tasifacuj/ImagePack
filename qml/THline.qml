import QtQuick 2.15


Item {
    id: root
    property alias size: embeddedLine.size

    width: parent.width
    height: size

    TLine { // the embedded line is rotated such that it will appear in its parent's boundaries
        id: embeddedLine

        transformOrigin: Item.TopLeft
        rotation:-90

        x: 0
        y: size
        width:  size
        height: root.width
    }
}
