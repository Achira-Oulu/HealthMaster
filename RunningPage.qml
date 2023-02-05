import QtQuick 2.15
import Achira 1.0
import QtQuick.Controls 6.3

Item {

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
                topMargin: 60
                left: parent.left
                leftMargin: 75

                //                verticalCenter: parent.verticalCenter
            }

            Button {
                id: button2
                x: 26
                y: 139
                width: 120
                height: 42
                text: qsTr("Resume Workout")
                onClicked:
                {
                    timerClass.resumeTimer();
                }
            }




        }

        Button {
            id: button1
            x: 100
            y: 139
            width: 120
            height: 42
            text: qsTr("Pause Workout")
            onClicked:
        {
            timerClass.pauseTimer();
        }

        }

        BottomDeck
        {
            id: bottomDeck
        }
        Image
        {
            id: menuButton
            width: parent.width/12
            height: width
            source: "qrc:/assets/menu.png"
            anchors
            {
                bottom: parent.bottom
                bottomMargin: 20
                left: parent.leftr
                leftMargin: 20
            }
        MouseArea
        {
            anchors.fill: parent
            onClicked: stackView.pop()
        }

        Text {
            id: elapsedTime
            anchors
            {

            }

            text: qsTr("text" + timerClass.timeDisplay)
        }

    }


}
