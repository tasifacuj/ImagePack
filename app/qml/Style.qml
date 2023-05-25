import QtQuick 2.15

pragma Singleton

QtObject {
    id: root

//Sizes

    property int sizeH2:			24
    property int sizeH7:            32

//Colors
    property color clWhite:			"#ffffff"
    property color clGrey:			"#333842"
    property color clGreyDk5:		"#171717"
    property color clBlue:			"#007AFF"
    property color clBlue2:			"#298DFB"
    property color colMain:         "#191919"


//Fonts
    readonly property string fontFamily:		"Helvetica"    

    readonly property font fontH2:	Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH2})
    readonly property font fontH7:     Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH7})

    readonly property TStyleFont fontH2White: TStyleFont{ font: fontH2; color: clWhite }
    readonly property TStyleFont fontH2rWhite: TStyleFont{ font: fontH2; color: clWhite }
    readonly property TStyleFont fontH7White: TStyleFont{ font: fontH7; color: clWhite }


// styles
    readonly property TStyleItem buttonYes: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonYesPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem line: TStyleItem {
        size:		1
        bgColor1:	clGrey
        bgColor2:	clGrey
    }

    readonly property TStyleItem itemSettingB:				TStyleItem{
        size:1;
        height:80;
        spacing:30;
    }

    readonly property TStyleItem itemSettingBPressed:		TStyleItem{
        size:1;
        height:80;
        spacing:30;
        bgColor1:clGreyDk5
    }

    readonly property TStyleItem itemSettingCaptionB:		TStyleItem{
        fonts:[fontH2White]
    }

    readonly property TStyleItem message: TStyleItem {
            width:         904
            height:                480
            radius:                20
            bgColor2:      colMain
            bgColor1:      colMain
            fonts:[fontH7White,fontH2rWhite]
            borderColor: clWhite
            borderWidth: 3
            spacing: 20
        }
}
