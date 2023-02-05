import QtQuick 2.15


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
    }

    BottomDeck
    {
        id: bottomBar
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
            left: parent.left
            leftMargin: 20
        }

        MouseArea
        {
            anchors.fill: parent
            onClicked: stackView.pop()
        }
    }



    MenuIcon
    {

        id: runningIcon
        buttonImageSource: "qrc:/assets/run.png"
        //anchors.centerIn: parent
        anchors
        {
            top: background.top
            topMargin: 100
            left: background.left
            leftMargin: leftMarginIcon

        }

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

        onButtonClicked: stackView.push("qrc:/RunningPage.qml")

    }

    MenuIcon
    {

        id: skippingIcon
        buttonImageSource: "qrc:/assets/skipping.png"
        anchors
        {
            top: runningIcon.bottom
            topMargin :20
            left: background.left
            leftMargin: leftMarginIcon

            //horizontalCenter: parent.horizontalCenter
        }

        width: parent.width * inconScaleFactor

        MenuName
        {
            id: skippingName
            anchors
            {
                top: skippingIcon.top
                topMargin: topMarginText
                left: skippingIcon.right
                leftMargin: leftMarginText

            }

            width: parent.width * 01
            height: parent.height * 01
            font.pixelSize: 16
            text: qsTr("Skipping")

        }
    }

    MenuIcon
    {

        id: liftingIcon
        buttonImageSource: "qrc:/assets/lift.png"
        anchors
        {
            top: skippingIcon.bottom
            topMargin :20
            left: background.left
            leftMargin: leftMarginIcon
           // horizontalCenter: parent.horizontalCenter
        }

        width: parent.width * inconScaleFactor

        MenuName
        {
            id: liftingName
            anchors
            {
                top: liftingIcon.top
                topMargin: topMarginText
                left: liftingIcon.right
                leftMargin: leftMarginText
            }

            width: parent.width * 01
            height: parent.height * 01
            font.pixelSize: 16
            text: qsTr("Lifting")

        }
    }

    MenuIcon
    {

        id: heartIcon
        buttonImageSource: "qrc:/assets/heart.png"
        anchors
        {
            top: liftingIcon.bottom
            topMargin :20
            left: background.left
            leftMargin: leftMarginIcon
           // horizontalCenter: parent.horizontalCenter
        }

        width: parent.width * inconScaleFactor

        MenuName
        {
            id: heartName
            anchors
            {
                top: heartIcon.top
                topMargin: topMarginText
                left: heartIcon.right
                leftMargin: leftMarginText
            }

            width: parent.width * 01
            height: parent.height * 01
            font.pixelSize: 16
            text: qsTr("Heart Rate")

        }
    }

    MenuIcon
    {

        id: bmiIcon
        buttonImageSource: "qrc:/assets/bmi.png"
        anchors
        {
            top: heartIcon.bottom
            topMargin :20
            left: background.left
            leftMargin: leftMarginIcon
           // horizontalCenter: parent.horizontalCenter
        }

        width: parent.width * inconScaleFactor

        MenuName
        {
            id: bmiName
            anchors
            {
                top: bmiIcon.top
                topMargin: topMarginText
                left: bmiIcon.right
                leftMargin: leftMarginText
            }

            width: parent.width * 01
            height: parent.height * 01
            font.pixelSize: 16
            text: qsTr("Check BMI")

        }

        onButtonClicked: stackView.push("qrc:/BmiPage.qml")
    }

}
