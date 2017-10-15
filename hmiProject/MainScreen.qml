import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {

    visible: true
    width: 1000
    height: 600
    id: window
    title: qsTr("Main Menu")

    Loader{
        id:loader
    }

    Component.onCompleted: {
        loader.setSource("main.qml")
    }

}
