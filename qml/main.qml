import QtQuick 2.15
import QtQuick.Window 2.15
import "."
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: Style.clBlue2

//    ImageItem{
//        id: testItem
//        path: "somefile.bmp"
//        size: "2000[B]"
//        status: "none"
//        width: parent.width
//        styleItem:              Style.itemSettingB
//        styleItemPressed:       Style.itemSettingBPressed
//        styleItemCaption:       Style.itemSettingCaptionB
//        anchors.centerIn: parent

//        onSignalClicked: {
//            console.log( path, ", ", size, " clicked" )
//        }
//    }

    ImageList{
        width: parent.width
        height: parent.height
        anchors.top: parent.top

        imageListModel: cppImgModel

        onSignalItemSelected: {
            console.log( ">>> selected item" + idx )
        }
    }

    ListModel{
          id: testModel
          ListElement {
              itemName: "file1.bmp";
              itemSize: "200[b]"
              itemStatus: "none"
          }
          ListElement {
              itemName: "file2.bmp";
              itemSize: "201[b]"
              itemStatus: "none"
          }
          ListElement {
              itemName: "file3.bmp";
              itemSize: "202[b]"
              itemStatus: "converting"
          }

      }
}
