import QtQuick 2.0

Item {
    property color scrollColor : "transparent"
    property int mainScreenHeight: 1000

    Rectangle{
        height:2
        width: height
        radius: height/2
        color: scrollColor
        border.width: 1
        anchors.left: max
    }
}
