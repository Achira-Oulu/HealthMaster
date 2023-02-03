import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 390
    height: 844
    visible: true
    title: qsTr("Hello World")

    StackView
    {
        id: stackView
        anchors.fill: parent
        initialItem: "HomePage.qml"
    }
}
