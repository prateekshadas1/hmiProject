import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1


Item
{
    visible: true
    property int screenHeight: 600
    property int screenWidth: 1000
    width: parent.width
    height: parent.height
    id: window

    Image
    {
        id:background
        source:"Images/backgroud screen1.jpg"
        anchors.fill: window
    }
    HomeButton
    {
        id: homeButton
        mainScreenHeight: window.height
        mainScreenWidth: window.width

    }
    Image{
        id:navigationIcon
        objectName: "navigationIcon"
        source:"Images/gps.png"
        width:window.width*0.1
        height:window.height/8.5
        anchors.top: parent.top
        anchors.topMargin: window.height*25/600
        anchors.left: parent.left
        anchors.leftMargin:window.width*120/1000
        fillMode: Image.PreserveAspectFit

    }
    Text{
        id:headingNavigation
        text:"NAVIGATION"
        font.bold: true
        font.family: "Arial"
        font.pointSize: window.width*18/1000
        color: "white"
        anchors.left:navigationIcon.right
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




    Image{id:location
        anchors.top: parent.top
        anchors.topMargin: window.height*140/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*125/1000
        fillMode: Image.PreserveAspectFit
        source: "Images/location1.png"
        height:window.height*5/60
        width:window.width*0.05
    }
    Rectangle{
        anchors.top: parent.top
        anchors.topMargin: window.height*155/600
        anchors.left: location.right
        anchors.leftMargin: window.width*20/1000
        height:window.height*28/600
        width:window.width*0.25
        color:"transparent"
        TextEdit{anchors.fill:parent
            focus:true
            text:"Your Location"
            font.pointSize:window.height*14/600
            color:"white"
        }

    }

    Image{id:position
        anchors.top:  parent.top
        anchors.topMargin: window.height*200/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*129/1000
        fillMode: Image.PreserveAspectFit
        source: "Images/position.png"
        height:window.height*4.2/60
        width:window.width*0.042
    }
    Rectangle{
        anchors.top:  parent.top
        anchors.topMargin: window.height*204/600
        anchors.left: position.right
        anchors.leftMargin: window.width*23/1000
        height:window.height*28/600
        width:window.width*0.25
        color:"transparent"
        TextEdit{anchors.fill:parent
            focus:true
            text:"24931 Woodridge drive farmington hills MI"
            font.pointSize:window.height*14/600
            color:"white"
            font.italic:true
        }

    }

    Image{id:map
        anchors.top:  parent.top
        anchors.topMargin: window.height*250/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*0.15
        fillMode: Image.PreserveAspectFit
        source: "Images/show map.jpg"
        height:window.height*30/60
        width:window.width*0.5
    }

    Rectangle{
        anchors.top: map.bottom
        anchors.topMargin: window.height*2/600
        anchors.left: map.right
        anchors.leftMargin: window.width*0.02
        width:window.width*0.15
        height:window.height*0.05
        color:"blue"
        MouseArea{anchors.fill:parent}
        Text{

            anchors.left:parent.left
            anchors.leftMargin:window.width*0.01
            anchors.verticalCenter: parent.verticalCenter
            text:"START"
            font.pointSize:window.height*12/600
            font.bold: true
            color:"white"
        }
        Image{
            id:triangleImage
            anchors.top: parent.top
            anchors.topMargin: window.height*6/600
            anchors.left: parent.left
            anchors.leftMargin: window.width*0.1
            fillMode: Image.PreserveAspectFit
            source: "Images/triangle1.png"
            height:window.height*15/600
            width:window.width*0.015



        }


    }







}
