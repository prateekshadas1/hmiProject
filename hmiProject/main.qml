import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


Window
{
    id: rootWindow
    visible: true
    width: 1000
    height: 600
    title: qsTr("Hello World")

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
        console.log(value)
        loader.setSource(value)
    }

}
