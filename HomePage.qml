import QtQuick 2.15

Item {
    Rectangle
    {
        id: background
        width: 390
        height: 844
        anchors.fill: parent
        gradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop {
                position: 0
                color: "#55aa00"
            }

            GradientStop {
                position: 1
                color: "#264a02"
            }
        }

        Text {
            id: text1
            width: 79
            height: 43
            text: qsTr("Health Master")
            anchors.top: parent.top
            font.pixelSize: 21
            horizontalAlignment: Text.AlignHCenter
            font.styleName: "Bold Italic"
            font.family: "Arial"
            rotation: 0
            anchors.topMargin: 64
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    MenuIcon
    {

        id: runningIcon
        buttonImageSource: "qrc:/assets/run.png"
        anchors.centerIn: parent
        width: parent.width * 0.3

        MenuName
        {

            id: runningName
            anchors.centerIn: parent
            width: MenuIcon.width * 01
            height: MenuIcon.height * 01
            text: qsTr("achira is the best")

        }

    }



//    MenuIcon
//    {
//        id: skippingIcon
//        buttonImageSource: "qrc:/assets/skipping.png"
//        anchors.centerIn: parent
//        width: parent.width * 0.3
//    }


}
