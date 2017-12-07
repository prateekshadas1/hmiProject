import QtQuick 2.0

Rectangle {
    id:test
    objectName: "test"
    height: 600
    width: 1000
    color: "blue"

    Item{
    id: anjith
    objectName: "anjith"
    signal refresh
    }

    MouseArea{
        id:mouse
        objectName: anjith.objectName
        anchors.fill: test

        onReleased: {
            anjith.refresh()
        }
    }

}
