import QtQuick 2.15
import QtQuick.Controls 6.3

Item {

    property real inconScaleFactor: 0.28
    property int leftMarginIcon: 40
    property int leftMarginText: 50
    property int topMarginText: 35

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


        MenuIcon
        {

            id: runningIcon
            buttonImageSource: "qrc:/assets/run.png"
            anchors.centerIn: parent
            height: 80
//          width: 20
            radius: 25
            width: parent.width * inconScaleFactor

            MenuName
            {

                id: runningName
                anchors
                {
                   top: runningIcon.top
                   topMargin: 35
                   left: runningIcon.right
                   leftMargin: leftMarginText
                   //verticallCenter: background.verticalCenter
                }

                width: parent.width * 01
                height: parent.height * 01
                font.pixelSize: 16
                text: qsTr("Running")

            }

            onButtonClicked: stackView.push("qrc:/HomePage.qml")

        }

        Button {
            id: button
            x: 253
            y: 316
            width: 135
            height: 48
            text: qsTr("get starteed")


            onClicked: stackView.push("qrc:/HomePage.qml")



        }


    }

}
