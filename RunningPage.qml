import QtQuick 2.15
import Achira 1.0
import QtQuick.Controls 6.3

Item {
    width: 390
    height: 844


        TimerClass
        {
            id: timerClass
        }

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
                x: 38
                y: 27
                width: 314
                height: 48
                text: qsTr("Running Menu")
                font.pixelSize: 25
                font.italic: true
                font.bold: true
            }

            Text {
                id: elapsedTime1
                x: 115
                y: -541
                width: 161
                height: 104
                text: ("Elapsed Time \n  " + timerClass.timeDisplay)
                font.bold: true
                font.pointSize: 25
            }

            Text {
                id: runningText
                x: 115
                y: 120
                width: 162
                height: 55
                text: qsTr("Running...")
                font.pixelSize: 25
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
                font.italic: true
                font.bold: true
            }

            Rectangle {
                id: rectangle
                radius: width/2
                border.color: "black"
                x: 95
                y: 174
                width: 200
                height: 200
                color: "#87888b"
            }
        }


        AnimatedImage
        {
            id: runningBoy
            source: "qrc:/assets/running2.gif"
            width: parent.width/2
            height: width
            anchors
            {
                top: parent.top
                topMargin: 178
                left: parent.left
                leftMargin: 98

                //                verticalCenter: parent.verticalCenter
            }

        }

        Button {
            id: button2
            x: 35
            y: 573
            width: 120
            height: 42
            text: qsTr("Resume Workout")
            onClicked:
            {
                timerClass.resumeTimer();
                runningBoy.paused = false;
                runningText.text = qsTr("Running...")
            }
        }

        Button
        {
            id: button1
            x: 238
            y: 573
            width: 120
            height: 42
            text: qsTr("Pause Workout")
            onClicked:
            {
                timerClass.pauseTimer();
                runningBoy.paused = true;
                runningText.text = qsTr("Paused");
            }

        }

        Button
        {
            //redundant button for now
            id: resetButton
            x: 135
            y: 635
            width: 120
            height: 42
            text: qsTr("Reset")
            onClicked:
            {
                timerClass.resetTimer();
            }

        }

        BottomDeck
        {
            id: bottomDeck
        }
        Image
        {
            id: backbutton
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

            Text
            {
                id: elapsedTime
                x: 51
                y: -386
                width: 291
                height: 104
                text:("Elapsed Time \n" + timerClass.timeDisplay)
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
                font.bold: true
                anchors
                {

                }

                font.pointSize: 25
            }

        }

//        Image
//        {
//            id: backButton
//            width: parent.width/10
//            height: width
//            source: "qrc:/assets/back.png"
//            anchors
//            {
//                bottom: parent.bottom
//                bottomMargin: 20
//                left: parent.left
//                leftMargin: 20
//            }

//            MouseArea
//            {
//                anchors.fill: parent
//                onClicked: stackView.pop()
//            }
//        }
}
