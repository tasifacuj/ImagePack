import QtQuick 2.15

pragma Singleton

QtObject {
    id: root

//Sizes
    property int sizeH1:			40
    property int sizeH2:			24
    property int sizeH3:			16
    property int sizeH4:            12
    property int sizeH5:			10
    property int sizeH1s:           35
    property int sizeH2s:           18
    property int sizeH7:			32
    property int size14px:          14
    property int size20px:          20

//Colors
    property color clWhite:			"#ffffff"
    property color clBlack:			"#000000"
    property color clGreyLt:		"#626977"
    property color clGrey:			"#333842"
    property color clGreyDk:		"#333333"
    property color clGreyDk2:		"#B2B2B2"
    property color clGreyDk3:		"#677897"
    property color clGreyDk4:		"#5A5A58"
    property color clGreyDk5:		"#171717"
    property color clGreyDk6:		"#677897"
    property color clGreyDk7:		"#2D2D2D"
    property color clGreyDk7tr:		"#ee2D2D2D"
    property color clBlacktr:		"#ee000000"
    property color clOrangeLt:		"#FF6600"
    property color clOrange:		"#FF5000"
    property color clBlue:			"#007AFF"
    property color clBlueDk:		"#003571"
    property color clBlue2:			"#298DFB"
    property color clBlueWh:		"#86C2EF"
    property color clRed:			"#FC3030"
    property color clRed2:			"#FF9999"
    property color clCyan:			"#00E9FF"
    property color clPurpleLt:		"#7300ff"
    property color clGreen:         "#00f298"
    property color clYellow:        "#ffff00"
    property color clTransparent:   "#00000000"
    property color clDarkGrey:      "#262629"
    property color clYellow2:       "#FFCC00"
    property color clDarkYellow2:   "#473d14"
    property color clRed3:			"#FF3B30"
    property color clGreen2:        "#2CC77C"
    property color clGreyDk9:       "#3A3B3D"
    property color clGreyDk8:       "#8E8E93"
    property color clGreyDk10:      "#636366"
    property color clGreyDk11:      "#D1D1D6"



    property color colMain: "#191919"
    property color colGrey: "#2A2A2A"
    property color colDkGrey: "#202020"

    property color clTurquoise: "#439998"
    property color clGreyDk12:  "#AEAEB2"
    property color clDarkBlue:  "#142c47"
    property color clDarkRed:  "#471614"
    property color clDarkGreen:  "#10492e"
    property color clRed4:  "#ff0600"



//Fonts
    readonly property string fontFamily:		"Helvetica"

    readonly property font fontH1:	Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH1})
    readonly property font fontH1s:	Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH1s})
    readonly property font fontH2:	Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH2})
    readonly property font fontH2r:	Qt.font({ family: fontFamily, bold: false, pixelSize: sizeH2})
    readonly property font fontH2m:	Qt.font({ family: fontFamily, weight:Font.Medium, pixelSize: sizeH2})
    readonly property font fontH2s:	Qt.font({ family: fontFamily, bold: false, pixelSize: sizeH2s})
    readonly property font fontH2sr:Qt.font({ family: fontFamily, weight:Font.Medium, pixelSize: sizeH2s})
    readonly property font fontH2sb:Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH2s})
    readonly property font fontH3:	Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH3})
    readonly property font fontH3r:	Qt.font({ family: fontFamily, bold: false, pixelSize: sizeH3})
    readonly property font fontH3m:	Qt.font({ family: fontFamily, weight:Font.Medium, pixelSize: sizeH3})
    readonly property font fontH4:	Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH4})
    readonly property font fontH5:	Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH5})
    readonly property font font14px:Qt.font({ family: fontFamily, bold: false, pixelSize: size14px})
    readonly property font fontH7r:	Qt.font({ family: fontFamily, weight:Font.Medium, pixelSize: sizeH7})
    readonly property font fontH7:	Qt.font({ family: fontFamily, bold: true, pixelSize: sizeH7})
    readonly property font fontStatusBar: Qt.font({ family: fontFamily, bold: false, pixelSize: 14})
    readonly property font font20px:	Qt.font({ family: fontFamily, bold: true, pixelSize: size20px})


    readonly property TStyleFont fontH1White: TStyleFont{ font: fontH1; color: clWhite }
    readonly property TStyleFont fontH1sWhite: TStyleFont{ font: fontH1s; color: clWhite }
    readonly property TStyleFont fontH1Black: TStyleFont{ font: fontH1; color: clBlack }
    readonly property TStyleFont fontH1Grey2: TStyleFont{ font: fontH1; color: clGreyDk2 }
    readonly property TStyleFont fontH1Blue:  TStyleFont{ font: fontH1; color: clBlue }
    readonly property TStyleFont fontH1Yellow:TStyleFont{ font: fontH1; color: clYellow }
    readonly property TStyleFont fontH1Red:   TStyleFont{ font: fontH1; color: clRed }
    readonly property TStyleFont fontH1Green: TStyleFont{ font: fontH1; color: clGreen }
    readonly property TStyleFont fontH1Green2: TStyleFont{ font: fontH1; color: clGreen2 }
    readonly property TStyleFont fontH1Yellow2: TStyleFont{ font: fontH1; color: clYellow2 }
    readonly property TStyleFont fontH1Red3: TStyleFont{ font: fontH1; color: clRed3 }

    readonly property TStyleFont fontH2sWhite: TStyleFont{ font: fontH2s; color: clWhite }
    readonly property TStyleFont fontH2sGreen: TStyleFont{ font: fontH2s; color: clGreen }
    readonly property TStyleFont fontH2sRed: TStyleFont{ font: fontH2s; color: clRed }
    readonly property TStyleFont fontH2sclGreyDk8: TStyleFont{ font: fontH2s; color: clGreyDk8 }

    readonly property TStyleFont fontH2White: TStyleFont{ font: fontH2; color: clWhite }
    readonly property TStyleFont fontH2Black: TStyleFont{ font: fontH2; color: clBlack }
    readonly property TStyleFont fontH2Blue:  TStyleFont{ font: fontH2; color: clBlue }
    readonly property TStyleFont fontH2Grey2: TStyleFont{ font: fontH2; color: clGreyDk2 }
    readonly property TStyleFont fontH2Green: TStyleFont{ font: fontH2; color: clGreen }
    readonly property TStyleFont fontH2Yellow:TStyleFont{ font: fontH2; color: clYellow }
    readonly property TStyleFont fontH2Red:   TStyleFont{ font: fontH2; color: clRed }
    readonly property TStyleFont fontH2Green2: TStyleFont{ font: fontH2; color: clGreen2 }
    readonly property TStyleFont fontH2Yellow2: TStyleFont{ font: fontH2; color: clYellow2 }
    readonly property TStyleFont fontH2Red3: TStyleFont{ font: fontH2; color: clRed3 }

    readonly property TStyleFont fontH2Grey3: TStyleFont{ font: fontH2; color: clGreyDk3 }
    readonly property TStyleFont fontH2rGrey3: TStyleFont{ font: fontH2r; color: clGreyDk3 }
    readonly property TStyleFont fontH2rWhite: TStyleFont{ font: fontH2r; color: clWhite }

    readonly property TStyleFont fontH2rGrey6: TStyleFont{ font: fontH2r; color: clGreyDk6 }
    readonly property TStyleFont fontH2rGrey8: TStyleFont{ font: fontH2r; color: clGreyDk8 }
    readonly property TStyleFont fontH2GreyDk8 : TStyleFont{ font: fontH2r; color: clGreyDk8 }

    readonly property TStyleFont fontH3Grey2: TStyleFont{ font: fontH3; color: clGreyDk2 }
    readonly property TStyleFont fontH3RGrey2: TStyleFont{ font: fontH3r; color: clGreyDk2 }
    readonly property TStyleFont fontH3mGrey2: TStyleFont{ font: fontH3m; color: clGreyDk2 }

    readonly property TStyleFont fontH3Grey3: TStyleFont{ font: fontH3; color: clGreyDk3 }
    readonly property TStyleFont fontH3mGrey3: TStyleFont{ font: fontH3m; color: clGreyDk3 }

    readonly property TStyleFont fontH3White: TStyleFont{ font: fontH3; color: clWhite }
    readonly property TStyleFont fontH3rWhite: TStyleFont{ font: fontH3r; color: clWhite }
    readonly property TStyleFont fontH3rRed: TStyleFont{ font: fontH3r; color: clRed }
    readonly property TStyleFont fontH3Red:   TStyleFont{ font: fontH3; color: clRed }
    readonly property TStyleFont fontH3Blue:  TStyleFont{ font: fontH3; color: clBlue }
    readonly property TStyleFont fontH3Green: TStyleFont{ font: fontH3; color: clGreen }
    readonly property TStyleFont fontH3Grey6: TStyleFont{ font: fontH3; color: clGreyDk6 }
    readonly property TStyleFont fontH3rGrey6: TStyleFont{ font: fontH3r; color: clGreyDk6 }
    readonly property TStyleFont fontH3Yellow:TStyleFont{ font: fontH3; color: clYellow }
    readonly property TStyleFont fontH3Yellow2:TStyleFont{ font: fontH3; color: clYellow2 }
    readonly property TStyleFont fontH3Grey8: TStyleFont{ font: fontH3; color: clGreyDk8 }
    readonly property TStyleFont fontH3mGrey8: TStyleFont{ font: fontH3m; color: clGreyDk8 }
    readonly property TStyleFont fontH3rGrey8: TStyleFont{ font: fontH3r; color: clGreyDk8 }
    readonly property TStyleFont fontH3Grey11: TStyleFont{ font: fontH3; color: clGreyDk11 }

    readonly property TStyleFont fontH7rGreen2: TStyleFont{ font: fontH7r; color: clGreen2 }
    readonly property TStyleFont fontH7rYellow2: TStyleFont{ font: fontH7r; color: clYellow2 }
    readonly property TStyleFont fontH7rRed3: TStyleFont{ font: fontH7r; color: clRed3 }
    readonly property TStyleFont fontH7White: TStyleFont{ font: fontH7; color: clWhite }
    readonly property TStyleFont fontH7Yellow2:TStyleFont{ font: fontH7; color: clYellow2 }
    readonly property TStyleFont fontH7Red3:   TStyleFont{ font: fontH7; color: clRed3 }
    readonly property TStyleFont fontH7Green2: TStyleFont{ font: fontH7; color: clGreen2 }

    readonly property TStyleFont fontH4Grey2: TStyleFont{ font: fontH4; color: clGreyDk2 }
    readonly property TStyleFont fontH4White: TStyleFont{ font: fontH4; color: clWhite }

    readonly property TStyleFont fontH5Grey2: TStyleFont{ font: fontH5; color: clGreyDk2 }
    readonly property TStyleFont fontH5White: TStyleFont{ font: fontH5; color: clWhite }
    readonly property TStyleFont font14pxWhite: TStyleFont{ font: font14px; color: clWhite }
    readonly property TStyleFont font14pxGrey: TStyleFont{ font: font14px; color: clGreyDk8 }
    readonly property TStyleFont font14pxRed: TStyleFont{ font: font14px; color: clRed }
    readonly property TStyleFont font14pxBlue: TStyleFont{ font: font14px; color: clBlue }
    readonly property TStyleFont font14pxGreen: TStyleFont{ font: font14px; color: clGreen }
    readonly property TStyleFont font14pxYellow2: TStyleFont{ font: font14px; color: clYellow2 }

    readonly property TStyleFont fontH2sbRed4: TStyleFont{ font: fontH2sb; color: clRed4 }
    readonly property TStyleFont fontH2sbGreyDk12: TStyleFont{ font: fontH2sb; color: clGreyDk12 }
    readonly property TStyleFont fontH2sGreyDk12: TStyleFont{ font: fontH2s; color: clGreyDk12 }
    readonly property TStyleFont fontH2sGreyDk8: TStyleFont{ font: fontH2s; color: clGreyDk8 }
    readonly property TStyleFont fontH2sbGreyDk9: TStyleFont{ font: fontH2sb; color: clGreyDk9 }
    readonly property TStyleFont fontH2sGreyDk9: TStyleFont{ font: fontH2s; color: clGreyDk9 }

    readonly property TStyleFont fontH2srWhite: TStyleFont{ font: fontH2sr; color: clWhite }
    readonly property TStyleFont fontH2sbWhite: TStyleFont{ font: fontH2sb; color: clWhite }

    readonly property TStyleFont size20pxbWhite: TStyleFont{ font: font20px; color: clWhite }

    readonly property TStyleFont fontStatusBarWhite: TStyleFont{ font: fontStatusBar; color: clWhite }
    readonly property TStyleFont fontStatusBarGreen: TStyleFont{ font: fontStatusBar; color: clGreen }
    readonly property TStyleFont fontStatusBarRed:   TStyleFont{ font: fontStatusBar; color: clRed }

    readonly property TStyleFont fontH3RGrey8: TStyleFont{ font: fontH3r; color: clGreyDk8 }
    readonly property TStyleFont fontHeatingWarningGray: TStyleFont { font: Qt.font({ family: fontFamily, bold: false, pixelSize: 14 }); color: clGreyDk2 }
    readonly property TStyleFont font32White: TStyleFont { font: Qt.font({ family: fontFamily, bold: true, pixelSize: 32}); color: clWhite }
//UI
    readonly property TStyleItem itemCheckbox: TStyleItem {
        width:		430
        height:		80
        size:		50
        bgColor1:	clBlack
        fonts:[fontH2White]
    }

    readonly property TStyleItem itemCheckboxList: TStyleItem {
        width: 430
        height: 80
        size: 50
        bgColor1: clBlack
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonJobPreview: TStyleItem {
        width:		130
        height:		130
        radius:		17
        bgColor1:	clGreyLt
        bgColor2:	clGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem jobListItem: TStyleItem {
        width:		924
        height:		150
        size:		30
        bgColor1:	clBlack
        fonts:[fontH2White,font14pxGrey,font14pxYellow2,font14pxGreen,font14pxBlue, font14pxRed]
    }

    readonly property TStyleItem progress: TStyleItem {
        width:		120
        height:		120
        size:       32
        bgColor1:	clGreyDk10
        bgColor2:	clWhite
        borderColor: clBlack
        fonts:[fontH2White]
    }

    readonly property TStyleItem progressBar: TStyleItem {
        width:		172
        height:		172
        size:       28
        bgColor1:	clDarkBlue
        bgColor2:	clBlue
        borderColor: clBlack
        fonts:[fontH2sbWhite, fontH2sWhite, fontH7White]
    }

    readonly property TStyleItem progressBarError: TStyleItem {
        width:		172
        height:		172
        size:       28
        bgColor1:	clDarkRed
        bgColor2:	clRed4
        borderColor: clBlack
        fonts:[fontH2sbWhite, fontH2sWhite, fontH7White]
    }

    readonly property TStyleItem progressBarPaused: TStyleItem {
        width:		172
        height:		172
        size:       28
        bgColor1:   clDarkYellow2
        bgColor2:	clYellow2
        borderColor: clBlack
        fonts:[fontH2sbWhite, fontH2sWhite, fontH7White]
    }

    readonly property TStyleItem progressBarCompleted: TStyleItem {
        width:		172
        height:		172
        size:       28
        bgColor1:	clDarkGreen
        bgColor2:	clGreen2
        borderColor: clBlack
        fonts:[fontH2sbWhite, fontH2sWhite, fontH7White]
    }

    readonly property TStyleItem supportCode: TStyleItem {
        size:		140
        width:		132
        height:		40
        radius:		16
        bgColor1:	clWhite
        fonts:      [fontH2Black]
    }

    readonly property TStyleItem scrollMarker: TStyleItem {
        width:		16
        height:		16
        radius:		8
        bgColor1:	clWhite
        bgColor2:	clGreyDk4
        borderColor: clGreyDk4
        borderWidth: 1
        fonts:[fontH1White]
    }

    readonly property TStyleItem spin: TStyleItem {
        size:		20
        width:		340
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonSpin: TStyleItem {
        width:		80
        height:		80
        radius:		40
        bgColor1:	clBlack
        borderColor: clWhite
        borderWidth: 1
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonSpinPressed: TStyleItem {
        width:		80
        height:		80
        radius:		40
        bgColor1:	clGreyDk
        borderColor: clWhite
        iconOverlayColor: clBlack
        borderWidth: 1
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonSpinDisabled: TStyleItem {
        width:		80
        height:		80
        radius:		40
        bgColor1:	clBlack
        borderColor: clGreyDk
        iconOverlayColor: clGreyDk
        borderWidth: 1
        fonts:[fontH1White]
    }

    readonly property TStyleItem spinSmall: TStyleItem {
        size:		20
        width:		200
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonSpinSmall: TStyleItem {
        width:		50
        height:		50
        radius:		25
        bgColor1:	clTransparent
        borderColor: clWhite
        borderWidth: 1
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonSpinPressedSmall: TStyleItem {
        width:		50
        height:		50
        radius:		25
        bgColor1:	clGreyDk
        borderColor: clWhite
        iconOverlayColor: clBlack
        borderWidth: 1
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonSpinDisabledSmall: TStyleItem {
        width:		50
        height:		50
        radius:		25
        bgColor1:	clTransparent
        borderColor: clGreyDk
        iconOverlayColor: clGreyDk
        borderWidth: 1
        fonts:[fontH1White]
    }

    readonly property TStyleItem spinDual: TStyleItem {
        size:		20
        width:		400
        fonts:[fontH1White]
    }

    readonly property TStyleItem spinItem: TStyleItem {
        height:		80
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonInputClear: TStyleItem {
        width:		40
        height:		40
        radius:		20
        bgColor1:	clBlack
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonInputClearPressed: TStyleItem {
        width:		40
        height:		40
        radius:		20
        bgColor1:	clWhite
        iconOverlayColor: clBlack
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonInputBackspace: TStyleItem {
        width:		40
        height:		40
        radius:		20
        bgColor1:	clGreyDk9
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonInputBackspacePressed: TStyleItem {
        width:		40
        height:		40
        radius:		20
        bgColor1:	clGreyDk9
        iconOverlayColor: clBlack
        fonts:[fontH1White]
    }

    readonly property TStyleItem edit: TStyleItem {
        width:		864
        height:		80
        radius:		20
        bgColor1:	clGreyDk9
        fonts:[fontH1White, fontH1Grey2]
    }

    readonly property TStyleItem keyboard: TStyleItem {
        height:		368
        bgColor1:	clBlack
    }

    readonly property TStyleItem buttonKeyboard: TStyleItem {
        width:		91
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonKeyboardPressed: TStyleItem {
        width:		91
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonKeyboardDisabled: TStyleItem {
        width:		91
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2Grey2]
    }

    readonly property TStyleItem buttonKeyboardBig: TStyleItem {
        width:		102
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonKeyboardPressedBig: TStyleItem {
        width:		102
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonCheckbox: TStyleItem {
        width:		50
        height:		50
        bgColor1:	clBlack
        fonts:[fontH1White]
    }

    readonly property TStyleItem buttonCheckboxTransparentBackground: TStyleItem {
        width:		50
        height:		50
        bgColor1:	clTransparent
        fonts:[fontH1White]
    }

    readonly property TStyleItem buttonKeyboardNum: TStyleItem {

        width:		307
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonKeyboardNumSmall: TStyleItem {

        width:		153
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonKeyboardNumPressed: TStyleItem {
        width:		307
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonKeyboardNumPressedSmall: TStyleItem {
        width:		153
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonKeyboardNumOk: TStyleItem {
        width:		307
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2Blue]
    }

    readonly property TStyleItem buttonKeyboardNumOkSmall: TStyleItem {
        width:		150
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2Blue]
    }

    readonly property TStyleItem buttonKeyboardNumOkPressed: TStyleItem {

        width:		307
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2Blue]
    }

    readonly property TStyleItem buttonKeyboardNumOkPressedSmall: TStyleItem {

        width:		150
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2Blue]
    }

    readonly property TStyleItem buttonKeyboardWide: TStyleItem {
        width:		128
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonKeyboardWidePressed: TStyleItem {
        width:		128
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonKeyboardShift: TStyleItem {
        width:		139
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonKeyboardShiftPressed: TStyleItem {
        width:		139
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonKeyboardSpace: TStyleItem {
        width:		308
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonKeyboardSpacePressed: TStyleItem {
        width:		308
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonKeyboardCtrl: TStyleItem {
        width:		308
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonKeyboardCtrlPressed: TStyleItem {
        width:		308
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonKeyboardOk: TStyleItem {
        width:		308
        height:		91
        bgColor1:	clBlack
        fonts:[fontH2Blue]
    }
    readonly property TStyleItem buttonKeyboardOkPressed: TStyleItem {
        width:		308
        height:		91
        bgColor1:	clDarkGrey
        fonts:[fontH2Blue]
    }

    readonly property TStyleItem buttonNo: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clTransparent
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 2
    }
    readonly property TStyleItem buttonNoPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clWhite
        fonts:[fontH2Black]
        borderColor: clWhite
        borderWidth: 2
    }

    readonly property TStyleItem buttonNoSmallText: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 2
    }
    readonly property TStyleItem buttonNoSmallTextPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clWhite
        fonts:[fontH2Black]
        borderColor: clWhite
        borderWidth: 2
    }


    readonly property TStyleItem buttonPartially: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	colDkGrey
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 2
    }
    readonly property TStyleItem buttonPartiallyPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clWhite
        fonts:[fontH2Black]
        borderColor: clWhite
        borderWidth: 2
    }

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

    readonly property TStyleItem buttonYesSmallText: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonYesSmallTextPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem message: TStyleItem {
        width:		904
        height:		480
        radius:		20
        bgColor2:	colMain
        bgColor1:	colMain
        fonts:[fontH7White,fontH2rWhite,fontH3White,fontH7White]
        borderColor: clWhite
        borderWidth: 3
        spacing: 20
    }

    readonly property TStyleItem pleaseWaitMessage: TStyleItem {
        width:		904
        height:		480
        radius:		20
        bgColor2:	colMain
        bgColor1:	colMain
        fonts:[fontH7White,fontH2rWhite,fontH3White]
        borderColor: clWhite
        borderWidth: 3
        spacing: 20
    }

    readonly property TStyleItem versionsInfo: TStyleItem {
        width:		904
        height:		480
        radius:		20
        bgColor2:	colMain
        bgColor1:	colMain
        fonts: [fontH7White, fontH2rWhite]
        borderColor: clWhite
        borderWidth: 3
        spacing: 20
    }


    readonly property TStyleItem hint: TStyleItem {
        width:		400
        height:		300
        radius:		20
        bgColor2:	clGreyDk7tr
        bgColor1:	clBlacktr
        fonts:[fontH1White]
        borderColor: clWhite
        borderWidth: 3
    }

    readonly property TStyleItem buttonPause: TStyleItem {
        width:		284
        height:		80
        radius:		40
        bgColor1:	clBlack
        fonts:[fontH1White]
        borderColor: clWhite
        borderWidth: 2
    }
    readonly property TStyleItem buttonPausePressed: TStyleItem {
        width:		284
        height:		80
        radius:		40
        bgColor1:	clWhite
        fonts:[fontH1Black]
        borderColor: clWhite
        borderWidth: 2
    }

    readonly property TStyleItem buttonStart: TStyleItem {
        width:		284
        height:		80
        radius:		40
        bgColor1:	clBlue
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonStartPressed: TStyleItem {
        width:		284
        height:		80
        radius:		40
        bgColor1:	clBlue2
        fonts:[fontH1White]
    }

    readonly property TStyleItem buttonBlue: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonBluePressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }
    property TStyleItem buttonRegular: buttonBlue
    property TStyleItem buttonRegularPressed: buttonBluePressed

    readonly property TStyleItem buttonBlueMedium: TStyleItem {
        width:		200
        height:		80
        radius:		40
        bgColor1:	clBlue
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonBlueMediumPressed: TStyleItem {
        width:		200
        height:		80
        radius:		40
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonBlueSmallFont: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonBlueSmallFontPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonBlueSmallFontDisabled: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlueWh
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonBlueFont: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonBlueFontPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonBlueFontDisabled: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlueWh
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonBlueWideSmallFont: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonBlueWideSmallFontPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonBlueSmall: TStyleItem {
        width:		200
        height:		56
        radius:		28
        bgColor1:	clBlue
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonBlueSmallPressed: TStyleItem {
        width:		200
        height:		56
        radius:		28
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clRed
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonRedPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clRed2
        fonts:[fontH1White]
    }

    readonly property TStyleItem buttonRedSmallText: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clRed
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonRedSmallTextPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clRed2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonAbort: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clRed
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonAbortPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clRed2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRoundBlue: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clBlue
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRoundSmallBlue: TStyleItem {
        width:		80
        height:		80
        radius:		40
        bgColor1:	clBlue
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRoundSmallBluePressed: TStyleItem {
        width:		80
        height:		80
        radius:		40
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRoundGrey: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRoundGreySmall: TStyleItem {
        width:		40
        height:		40
        radius:		40
        bgColor1:	clGrey
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonRoundBluePressed: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRoundBlueMedium: TStyleItem {
        width:		100
        height:		100
        radius:		50
        bgColor1:	clBlue
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonRoundBlueMediumPressed: TStyleItem {
        width:		100
        height:		100
        radius:		50
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRoundBlueMediumH3: TStyleItem {
        width:		80
        height:		80
        radius:		50
        bgColor1:	clBlue
        fonts:[fontH3White]
    }
    readonly property TStyleItem buttonRoundBlueMediumH3Pressed: TStyleItem {
        width:		80
        height:		80
        radius:		50
        bgColor1:	clBlue2
        fonts:[fontH3White]
    }

    readonly property TStyleItem buttonRoundMediumH3: TStyleItem {
        width:		80
        height:		80
        radius:		60
        bgColor1:	clBlack
        fonts:[fontH3White]
        borderColor: clWhite
        borderWidth: 1
    }
    readonly property TStyleItem buttonRoundMediumH3Pressed: TStyleItem {
        width:		80
        height:		80
        radius:		60
        bgColor1:	clGreyDk
        iconOverlayColor: clBlack
        fonts:[fontH3White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonRoundBlueBig: TStyleItem {
        width:		150
        height:		150
        radius:		75
        bgColor1:	clBlue
        fonts:[fontH1White]
    }
    readonly property TStyleItem buttonRoundBlueBigPressed: TStyleItem {
        width:		150
        height:		150
        radius:		75
        bgColor1:	clBlue2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonSimple: TStyleItem {
        width:		40
        height:		40
        radius:		5
        bgColor1:	clBlack
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRoundRed: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clRed
        fonts:[fontH2White]
    }
    readonly property TStyleItem buttonRoundRedPressed: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clRed2
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonRound: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonRoundBold: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clBlack
        fonts:[fontH1White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonRoundBoldPressed: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clGreyDk
        iconOverlayColor: clBlack
        fonts:[fontH1White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonRoundPressed: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clGreyDk
        iconOverlayColor: clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonRoundSmall: TStyleItem {
        width:		60
        height:		60
        radius:		30
        bgColor1:	clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }
    readonly property TStyleItem buttonRoundSmallPressed: TStyleItem {
        width:		60
        height:		60
        radius:		30
        bgColor1:	clGreyDk
        iconOverlayColor: clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonRoundWhite: TStyleItem {
        width:		80
        height:		80
        radius:		40
        bgColor1:	clWhite
        fonts:[fontH2White]
        borderColor: clBlack
        borderWidth: 1
    }
    readonly property TStyleItem buttonRoundWhitePressed: TStyleItem {
        width:		80
        height:		80
        radius:		40
        bgColor1:	clGreyDk
        iconOverlayColor: clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonTransparent: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clTransparent
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }
    readonly property TStyleItem buttonTransparentPressed: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clGreyDk7tr
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }
    readonly property TStyleItem buttonTransparentDisabled: TStyleItem {
        width:		120
        height:		120
        radius:		60
        bgColor1:	clTransparent
        fonts:[fontH2White]
        borderColor: clGreyDk
        borderWidth: 1
    }

    readonly property TStyleItem buttonTransparentSmall: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clTransparent
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 2
    }

    readonly property TStyleItem buttonTransparentSmallPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clGreyDk7tr
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 2
    }

    readonly property TStyleItem buttonTransparentSmallDisabled: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clTransparent
        fonts:[fontH2White]
        borderColor: clGreyDk
        borderWidth: 2
    }

    readonly property TStyleItem buttonRoundMedium: TStyleItem {
        width:		100
        height:		100
        radius:		60
        bgColor1:	clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }
    readonly property TStyleItem buttonRoundMediumPressed: TStyleItem {
        width:		100
        height:		100
        radius:		60
        bgColor1:	clGreyDk
        iconOverlayColor: clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonRoundMediumWhite: TStyleItem {
        width:		100
        height:		100
        radius:		60
        bgColor1:	clWhite
        iconOverlayColor: clWhite
        fonts:[fontH2White]
        borderColor: clGreyDk
        borderWidth: 1
    }

    readonly property TStyleItem buttonSecondary: TStyleItem {
        width:		160
        height:		80
        radius:		48
        bgColor1:	clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonSecondaryPressed: TStyleItem {
        width:		160
        height:		80
        radius:		48
        bgColor1:	clGreyDk
        iconOverlayColor: clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonRoundBig: TStyleItem {
        width:		150
        height:		150
        radius:		75
        bgColor1:	clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }
    readonly property TStyleItem buttonRoundBigPressed: TStyleItem {
        width:		150
        height:		150
        radius:		75
        bgColor1:	clWhite
        iconOverlayColor: clBlack
        fonts:[fontH2Black]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonBlack: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonBlackPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clWhite
        iconOverlayColor: clBlack
        fonts:[fontH2Black]
        borderColor: clWhite
        borderWidth: 1
    }

    readonly property TStyleItem buttonBlackBorder2: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 2
    }

    readonly property TStyleItem buttonBlackBorder2Pressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clWhite
        iconOverlayColor: clBlack
        fonts:[fontH2Black]
        borderColor: clWhite
        borderWidth: 2
    }

    readonly property TStyleItem buttonBlackBorderWide: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlack
        fonts:[fontH2White]
        borderColor: clWhite
        borderWidth: 2
    }

    readonly property TStyleItem buttonBlackBorderWidePressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clWhite
        iconOverlayColor: clBlack
        fonts:[fontH2Black]
        borderColor: clWhite
        borderWidth: 2
    }

    readonly property TStyleItem line: TStyleItem {
        size:		1
        bgColor1:	clGrey
        bgColor2:	clGrey
    }

    readonly property TStyleItem itemSetting:				TStyleItem{ size:1; height:60; spacing:10; }
    readonly property TStyleItem itemSettingPressed:		TStyleItem{ size:1; height:60; spacing:10; bgColor1:clGreyDk5 }
    readonly property TStyleItem itemSettingCaption:		TStyleItem{ fonts:[fontH2White] }
    readonly property TStyleItem itemSettingDescription:	TStyleItem{ fonts:[fontH3Grey2] }
    readonly property TStyleItem itemSettingValue:			TStyleItem{ fonts:[fontH2Blue,fontH2Grey2, fontH2Yellow, fontH2Red] }

    readonly property TStyleItem itemSettingSmall:				TStyleItem{ size:1; height:30; spacing:10; }
    readonly property TStyleItem itemSettingSmallPressed:		TStyleItem{ size:1; height:30; spacing:10; bgColor1:clGreyDk5 }
    readonly property TStyleItem itemSettingSmallCaption:		TStyleItem{ fonts:[fontH2White] }
    readonly property TStyleItem itemSettingSmallDescription:	TStyleItem{ fonts:[fontH3Grey2] }
    readonly property TStyleItem itemSettingSmallValue:			TStyleItem{ fonts:[fontH2Blue,fontH2Grey2] }

    readonly property TStyleItem itemSettingB:				TStyleItem{ size:1;height:80; spacing:30;}
    readonly property TStyleItem itemSettingBPressed:		TStyleItem{ size:1;height:80; spacing:30; bgColor1:clGreyDk5 }
    readonly property TStyleItem itemSettingCaptionB:		TStyleItem{ fonts:[fontH2White] }
    readonly property TStyleItem itemSettingDescriptionB:	TStyleItem{ fonts:[fontH3RGrey2] }
    readonly property TStyleItem itemSettingValueB:         TStyleItem{ fonts:[fontH2Blue,fontH2Grey2, fontH2Yellow, fontH2Red] }

    readonly property TStyleItem itemSettingMaterial:				TStyleItem{ size:1;height:80; spacing:30;}
    readonly property TStyleItem itemSettingMaterialPressed:		TStyleItem{ size:1;height:80; spacing:30; bgColor1:clGreyDk5 }
    readonly property TStyleItem itemSettingMaterialCaptionB:		TStyleItem{ fonts:[fontH2White] }
    readonly property TStyleItem itemSettingMaterialDescriptionB:	TStyleItem{ fonts:[fontH2Blue] }
    readonly property TStyleItem itemSettingMaterialValueB:		TStyleItem{ fonts:[fontH2Blue,fontH2Grey2, fontH2Yellow, fontH2Red] }

    readonly property TStyleItem itemSwitch: TStyleItem {
        width:		764
        height:		50
        fonts:[fontH1White, fontH1Grey2]
    }

    readonly property TStyleItem itemCustomSwitch: TStyleItem {
        width:		924
        height:		80
        fonts:[fontH2White, fontH2Grey2]
    }

    readonly property TStyleItem itemSwitchSmall: TStyleItem {
        width:		604
        height:		30
        fonts:[fontH2White, fontH2Grey2]
    }

    readonly property TStyleItem itemSwitchInternal: TStyleItem {
        width:		924
        height:		80
        fonts:[fontH2White, fontH2Grey2]
    }

    readonly property TStyleItem switcher: TStyleItem {
        size:		100
        width:		300
        height:		50
        radius:		25
        bgColor1:	clGreyDk
        bgColor2:	clBlue
        fonts:[fontH2White, fontH2Grey2]
    }

    readonly property TStyleItem switcherButtonFontSmall: TStyleItem {
        size:		100
        width:		300
        height:		50
        radius:		25
        bgColor1:	clGreyDk
        bgColor2:	clBlue
        fonts:[fontH3White, fontH3Grey2]
    }

    readonly property TStyleItem settingSwitcher: TStyleItem {
        size:		33
        width:		100
        height:		60
        radius:		25
        bgColor1:	clGreyDk
        bgColor2:	clBlueDk
        fonts:		[fontH2Blue, fontH2Grey2]
    }

    readonly property TStyleItem buttonDefault: TStyleItem {
        size:		100
        width:		100
        height:		100
        radius:		0
        bgColor1:	clBlack
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonTransparentSkip: TStyleItem {
        size:		100
        width:		320
        height:		80
        radius:		60
        fonts:[fontH1White]
        borderColor: clWhite
        borderWidth: 2
    }

    readonly property TStyleItem buttonAbortLefter: TStyleItem {
        size:		5
        width:		100
        height:		100
        radius:		0
        bgColor1:	clBlack
        fonts:[fontH3Grey2]
    }

    readonly property TStyleItem dataRowDefault: TStyleItem {
        size:		100
        width:		320
        height:		1
        radius:		0
        bgColor1:	clGreyDk9
        fonts:[fontH3rWhite]
    }

    readonly property TStyleItem buttonHeader: TStyleItem {
        size:		100
        width:		100
        height:		100
        radius:		0
        bgColor1:	clTransparent
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonFooter: TStyleItem {
        size:		70
        width:		70
        height:		70
        radius:		0
        bgColor1:	clTransparent
        fonts:[fontH2White]
    }

    readonly property TStyleItem contractButton: TStyleItem {
        size:		70
        width:		70
        height:		60
        radius:		0
        bgColor1:	clTransparent
        fonts:[fontH3Grey2]
    }

    readonly property TStyleItem buttonMenu: TStyleItem {
        size:		15
        width:		130
        height:		130
        radius:		20
        bgColor1:	clGreyDk10
        bgColor2:	clGreyDk9
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonJobs: TStyleItem {
        size:		25
        width:		254
        height:		254
        radius:		60
        bgColor1:	clOrangeLt
        bgColor2:	clOrange
        fonts:[fontH7White]
    }

    readonly property TStyleItem buttonJobsTurquoise: TStyleItem {
        size:		25
        width:		254
        height:		254
        radius:		60
        bgColor1:	clTurquoise
        bgColor2:	clTurquoise
        fonts:[fontH7White]
    }

    readonly property TStyleItem bigButtonTiltOrange: TStyleItem {
        size:		25
        width:		254
        height:		254
        radius:		60
        bgColor1:	clOrangeLt
        bgColor2:	clOrange
        fonts:[fontH1White]
    }

    readonly property TStyleItem bigButtonTiltGray: TStyleItem {
        size:		25
        width:		254
        height:		254
        radius:		60
        bgColor1:	clGreyLt
        bgColor2:	clGrey
        fonts:[fontH1White]
    }

    readonly property TStyleItem buttonSettings: TStyleItem {
        size:		25
        width:		254
        height:		254
        radius:		60
        bgColor1:	clGreyDk10
        bgColor2:	clGreyDk9
        fonts:[fontH7White]
    }

    readonly property TStyleItem buttonPreview: TStyleItem {
        size:		20
        width:		420
        height:		420
        radius:		20
        bgColor1:	clGreyLt
        bgColor2:	clGrey
        fonts:[fontH2White]
    }

    readonly property TStyleItem buttonPower: TStyleItem {
        size:		25
        width:		254
        height:		254
        radius:		60
        bgColor1:	clRed
        fonts:[fontH7White]
    }

    readonly property TStyleItem buttonPowerPressed: TStyleItem {
        size:		25
        width:		254
        height:		254
        radius:		60
        bgColor1:	clRed2
        fonts:[fontH7White]
    }

    readonly property TStyleItem buttonStartPIDCalibrtation: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue
        fonts:[font32White]
    }
    readonly property TStyleItem buttonStartPIDCalibrtationPressed: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clBlue2
        fonts:[font32White]
    }

    readonly property TStyleItem buttonPIDTuning: TStyleItem {
        width:		320
        height:		80
        radius:		48
        bgColor1:	clTransparent
        borderWidth: 2
        borderColor: clWhite
        fonts:[font32White]
    }

    readonly property TStyleItem lefter:	TStyleItem{ size:2; width:100; bgColor1:colGrey; bgColor2:colGrey; }
    readonly property TStyleItem footer:	TStyleItem{ height:70; fonts:[fontH3rWhite,fontH3rRed] }
    readonly property TStyleItem navigator:	TStyleItem{ width:100; size: 10}
    readonly property TStyleItem header:	TStyleItem{ height:100; bgColor1:clBlack; bgColor2:colGrey; fonts:[fontH7White,fontH2White,fontH3White,fontH1sWhite] }
    readonly property TStyleItem blackheader:	TStyleItem{ height:100; bgColor1:clBlack; bgColor2:clBlack; fonts:[fontH1White,fontH2White,fontH3White,fontH1sWhite] }
    readonly property TStyleItem flowInfo:	TStyleItem{ height:100; bgColor1:clBlack; bgColor2:clBlue; fonts:[fontH1Green,fontH1Red,fontH1White] }
}
