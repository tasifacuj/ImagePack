import QtQuick 2.15

Item {
    id: root
    anchors.fill: parent
    clip: true

    property alias imageListModel: lv.model
    property var statusStrings: [ "encoding", "decoding", "" ]

    signal signalItemSelected(int idx)

    Component{
        id: delegate

        ImageItem{
            id: itemId
            fileName:  itemName
            size:  itemSize
            status: root.statusStrings[ itemStatus ]
            width: parent.width

            styleItem:              Style.itemSettingB
            styleItemPressed:       Style.itemSettingBPressed
            styleItemCaption:       Style.itemSettingCaptionB

            onSignalClicked: {
                console.log( "{" + fileName + ": " + size + "[b], status: " + status  )
                root.signalItemSelected( index )
            }
        }
    }

    ListView{
        id:             lv
        anchors.fill:   parent
        delegate:       delegate
        focus:          true

        snapMode: ListView.NoSnap
        boundsBehavior: Flickable.StopAtBounds
    }
}
