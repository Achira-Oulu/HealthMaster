import QtQuick 2.15


Rectangle {

    property string buttonImageSource: ""
    height: width
    radius: width/2
    color: "#959595"


    Image
    {
        width: parent.width * 0.55
        height: parent.height * 0.5
        anchors.centerIn: parent
        source: parent.buttonImageSource

    }
}


