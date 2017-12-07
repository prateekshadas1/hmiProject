import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


Window {
    property int screenWidth
    property int screenHeight

    visible: true
    width: 1000
    height: 600
    screenWidth: rootWindow.width
    screenHeight:rootWindow.height
    id: rootWindow
    title: qsTr("Main Menu")

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

        if(value === "MainScreen.qml")
        {
       refreshItem.refresh(1)
        }


    }
}
