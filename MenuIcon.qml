import QtQuick 2.15


Rectangle {
    signal buttonClicked()
    property string buttonImageSource: ""
    height: width
    radius: width/2
    color: "#959595"


    Image
    {
        width: parent.width * 0.5
        height: parent.height * 0.5
        anchors.centerIn: parent
        source: parent.buttonImageSource

    }

    MouseArea
    {
        anchors.fill: parent
        onPressed: parent.color = "#777778"
        onReleased: parent.color = "#959595"
        onClicked: parent.buttonClicked()
    }

}
