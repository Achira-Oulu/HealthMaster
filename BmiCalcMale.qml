import QtQuick 2.15
import QtQuick.Controls 6.3

Item
{
    width: 390
    height: 844
    Rectangle
    {
        id: background

        BottomDeck
        {
            id: bottomDeck
        }

        anchors.fill: parent
        gradient: Gradient
        {
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
            x: 38
            y: 27
            width: 314
            height: 48
            text: qsTr("BMI Menu - Male")
            font.pixelSize: 25
            font.italic: true
            font.bold: true
        }

        TextField {
            id: textField
            x: 106
            y: 295
            width: 180
            height: 35
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 16

            placeholderText: qsTr("Text Field")
        }

        Text {
            id: text2
            x: 38
            y: 253
            width: 314
            height: 28
            text: qsTr("Enter your height in Meters")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
        }

        TextField {
            id: textField1
            x: 106
            y: 414
            width: 180
            height: 35
            horizontalAlignment: Text.AlignHCenter
            placeholderText: qsTr("Text Field")
            font.pointSize: 20
        }

        Text {
            id: text3
            x: 38
            y: 371
            width: 314
            height: 28
            text: qsTr("Enter your weight in Kilograms")
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
        }

        Button {
            id: button
            x: 129
            y: 514
            width: 132
            height: 57
            text: qsTr("Button")
        }
        Image
        {
            id: backButton
            width: parent.width/10
            height: width
            source: "qrc:/assets/back.png"
            anchors
            {
                bottom: parent.bottom
                bottomMargin: 20
                left: parent.left
                leftMargin: 20
            }

            MouseArea
            {
                anchors.fill: parent
                onClicked: stackView.pop()
            }
        }



    }
}
