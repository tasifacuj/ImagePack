import QtQuick 2.15
import QtQuick.Window 2.15
import "."
Window {
    width: 640 * 2
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: Style.clBlue2

    function slotShowWarn( warnMsg ){
        warningMessage.caption = "Warning";
        warningMessage.text = warnMsg;
        warningMessage.visible = true;
    }

    TImageList{
        id: images
        width: parent.width
//        height: 400
        anchors.top: parent.top
        anchors.left:  parent.left

        imageListModel: cppImgModel

        onSignalItemSelected: {
            cppImgModel.handleClick( idx );
        }
    }

    TMessage{
        id: warningMessage
        visible: false
        anchors.fill: parent
        caption: "Warning"
        text:   "Shit happened"


        onSignalClicked: {
            console.log( "msg clicked" );
            visible = false;
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
