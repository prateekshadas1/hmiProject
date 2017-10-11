import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1


Window
{
    visible: true
    width: 1000
    height: 600
    id: window
    title: qsTr("Main Menu")

    Background
    {
        mainScreenHeight: window.height
        mainScreenWidth: window.width
    }


    HomeButton
    {
        mainScreenHeight: window.height
        mainScreenWidth: window.width
    }


    Time
    {
        anchors.right:parent.right
        anchors.rightMargin: parent.width*20/1000
        anchors.top: parent.top
        anchors.topMargin: parent.height*16/600
        mainScreenWidth: window.width
        mainScreenHeight: window.height
    }

    Rectangle
    {
        id:borderLine
        width:parent.width
        height:1
        color: "gray"
        anchors.top: parent.top
        anchors.topMargin: window.height*125/600
    }

    GridImages
    {
        mainScreenHeight: window.height
        mainScreenWidth: window.width
    }


}
