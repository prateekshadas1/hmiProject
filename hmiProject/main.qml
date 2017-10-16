import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 1.4


Window {

    visible: true
    width: 1000
    height: 600
    id: window
    title: qsTr("Main Menu")

    property bool glowLayer: false

    Loader{
        id:loader
    }

    Image
    {
        anchors.fill:parent
        source:"Images/backgroud screen1.jpg"
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
        console.log(value)
        loader.setSource(value)
    }
}
