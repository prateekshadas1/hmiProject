import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


Window {

    visible: true
    width: 1000
    height: 600
    id: rootWindow
    title: qsTr("Main Menu")

    property bool glowLayer: false

    Image
    {
        anchors.fill:parent
        source:"Images/backgroud screen1.jpg"
    }

    Item
    {
        id: refreshItem
        objectName: "refresh"
        signal refresh(var refresh)
    }

    Loader
    {
        id: loader
        onLoaded:
        {
            console.log("Loader finished")
            refreshItem.refresh(1)
        }
    }

    Component.onCompleted:
    {
        console.log("Component onCompleted")
        loader.setSource("MainScreen.qml")
    }

    function changeScreen(value)
    {
        console.log("Showing Screen" + value)
        loader.setSource(value)
    }
}
