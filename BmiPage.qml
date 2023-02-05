import QtQuick 2.15
import Achira 1.0

Item {

//        TimerClass
//        {
//            id: timerClass
//        }

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
//        Text {
//            id: elapsedTime
//            anchors
//            {

//            }

//            text: qsTr("text" + timerClass.timeDisplay)
//        }
    }


}
