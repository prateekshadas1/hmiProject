import QtQuick 2.0
import QtQuick.Window 2.3
import QtQuick.Controls 2.2

Item {

    id:window
    visible: true
    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000
    height: mainScreenHeight
    width:mainScreenWidth

    Background
    {
        mainScreenHeight: window.height
        mainScreenWidth: window.width
    }

    Image {
        id: homeButton
        anchors.top: window.top
        anchors.topMargin: window.height*20/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*10/1000
        fillMode: Image.PreserveAspectFit

        source: "Images/home icon.png"
        height:window.height/6
        width:window.width*0.1
        MouseArea{
            anchors.fill: homeButton

            onPressed: {
                homeButton.height=homeButton.height*0.75
                homeButton.width=homeButton.width*0.75

            }
            onReleased: {
                homeButton.height = window.height/6
                homeButton.width =  window.width*0.1
                rootWindow.changeScreen("MainScreen.qml")

            }
    }
    }

    Image{
        id:radioIcon
        source:"Images/radio1.png"
        width:window.width*0.1
        height:window.height/8.5
        anchors.top: parent.top
        anchors.topMargin: window.height*25/600
        anchors.left: parent.left
        anchors.leftMargin:window.width*120/1000
        fillMode: Image.PreserveAspectFit
    }

    Text{
        id:headingRadio
        text:"RADIO"
        font.bold: true
        font.family: "Arial"
        font.pointSize: window.width*18/1000
        color: "white"
        anchors.left:radioIcon.right
        anchors.leftMargin: window.width*10/1000
        anchors.top:parent.top
        anchors.topMargin:window.height* 45/600
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
        id:horizontalLine
        width:parent.width
        height:1
        color: "gray"
        anchors.top: parent.top
        anchors.topMargin: window.height*120/600
    }
    Rectangle
    {
        id:verticalLine
        width:1
        height:parent.height
        color: "gray"
        anchors.top: parent.top
        anchors.left:parent.left
        anchors.leftMargin: window.width*110/1000
    }

    Image {
        id: signalIcon
        source: "Images/RadioTower.png"
        anchors.top:horizontalLine.bottom
        anchors.topMargin: window.height*30/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*800/1000
        height:window.height*150/600
        width:window.width*150/1000
    }

    Text{
        id:frequency
        text:"- -.- -"
        font.bold: true
        font.family: "Arial"
        color: "white"
        font.pointSize: window.width*40/1000
        anchors.top:parent.top
        anchors.topMargin: window.height*200/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*400/1000

    }
    Text{
        id:amFm
        text:"- - -"
        font.bold: true
        font.family: "Arial"
        color: "white"
        font.pointSize: window.width*15/1000
        anchors.top:parent.top
        anchors.topMargin: window.height*300/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*250/1000

    }
    Text{
        id:frequencyinMhz
        text:"- - -"
        font.bold: true
        font.family: "Arial"
        color: "white"
        font.pointSize: window.width*15/1000
        anchors.top:parent.top
        anchors.topMargin: window.height*300/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*650/1000

    }


    Button{
        id:p1
        width:window.width*110/1000
        height:window.height*80/600
        anchors.top:horizontalLine.bottom
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            text:"P1"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.centerIn: parent
        }


    }
    Button{
        id:p2
        width:window.width*110/1000
        height:window.height*80/600
        anchors.top:p1.bottom
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            text:"P2"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.centerIn: parent
        }


    }
    Button{
        id:p3
        width:window.width*110/1000
        height:window.height*80/600
        anchors.top:p2.bottom
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            text:"P3"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.centerIn: parent
        }


    }
    Button{
        id:p4
        width:window.width*110/1000
        height:window.height*80/600
        anchors.top:p3.bottom
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            text:"P4"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.centerIn: parent
        }


    }
    Button{
        id:p5
        width:window.width*110/1000
        height:window.height*80/600
        anchors.top:p4.bottom
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            text:"P5"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.centerIn: parent
        }


    }
    Button{
        id:p6
        width:window.width*110/1000
        height:window.height*80/600
        anchors.top:p5.bottom
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            text:"P6"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.centerIn: parent
        }


    }

    Button{
        id:sourceButton
        width:window.width*130/1000
        height:window.height*50/600
        anchors.top:parent.top
        anchors.topMargin:window.height* 450/600
        anchors.left:parent.left
        anchors.leftMargin: window.width*300/1000
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 2
            border.color: "white"
        }

        Text{
            text:"SOURCE"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*14/1000
            anchors.centerIn: parent
        }

    }
    Rectangle{
        id:browseButton
        width: 130
        height: 50
        anchors.top:parent.top
        anchors.left:sourceButton.right
            anchors.fill: parent
            color: "transparent"
            anchors.rightMargin: 256
            anchors.bottomMargin: 100
            anchors.leftMargin: 594
            anchors.topMargin: 446
            border.width: 2
            border.color: "white"



        Text{
            text:"BROWSE"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*14/1000
            anchors.centerIn: parent
        }
        MouseArea{
            id:browseMouseArea
            width: 130
            height: 50
            anchors.fill:browseButton
            hoverEnabled: true
            onClicked: {
                browseButton.color="light blue"
                browseButton.height=browseButton.height*0.75
                browseButton.width=browseButton.width*0.75
                rootWindow.changeScreen("RadioBrowse.qml")
            }
        }

    }
    }
