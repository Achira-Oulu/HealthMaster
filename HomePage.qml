import QtQuick 2.15

Item {
    Rectangle
    {
        id: background
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

    MenuIcon
    {
        id: runningIcon
        buttonImageSource: "qrc:/assets/run.png"
        anchors.centerIn: parent
        width: parent.width * 0.5
    }


}
