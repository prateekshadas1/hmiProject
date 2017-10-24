import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Item {
    id: templateWindow
    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000
    property bool verticalLineVisible: false
    property string imageSource: ""
    property string changeScreen: ""
    property string screenHeading: ""

    Image
    {
        id:background
        source:"Images/backgroud screen1.jpg"
        anchors.fill: templateWindow
    }

    Image {
        id: homeButton
        anchors.top: templateWindow.top
        anchors.topMargin: mainScreenHeight*18/600
        anchors.left: templateWindow.left
        anchors.leftMargin: mainScreenWidth*10/1000
        fillMode: Image.PreserveAspectFit
        source: "Images/home icon.png"
        height:mainScreenHeight/6
        width:mainScreenWidth*0.1

        MouseArea
        {
            anchors.fill: homeButton
            onPressed:
            {
                homeButton.height=mainScreenHeight/6*(3/4)
                homeButton.width=mainScreenWidth*0.1*(3/4)
            }
            onReleased:
            {
                homeButton.height=mainScreenHeight/6
                homeButton.width=mainScreenWidth*0.1
                rootWindow.changeScreen("MainScreen.qml")
            }
        }
    }

    Image{
            id:screenIcon
            source: templateWindow.imageSource
            width:mainScreenWidth*0.1
            height:mainScreenHeight/8.5
            anchors.top: templateWindow.top
            anchors.topMargin: mainScreenHeight * 25/600
            anchors.left: parent.left
            anchors.leftMargin:mainScreenWidth *120/1000
            fillMode: Image.PreserveAspectFit

            MouseArea{
                anchors.fill: screenIcon
                onPressed: {
                    screenIcon.height = screenIcon.height * 0.75
                    screenIcon.width = screenIcon.weight * 0.75
                }
                onReleased: {
                    screenIcon.height = mainScreenHeight/8.5
                    screenIcon.width = mainScreenWidth*0.1
                    rootWindow.changeScreen(templateWindow.changeScreen)
                }
            }

        }
        Text{
            id:screenHeading
            text:templateWindow.screenHeading
            font.bold: true
            font.family: "Arial"
            font.pointSize: mainScreenWidth * 18/1000
            color: "white"
            anchors.left:screenIcon.right
            anchors.leftMargin: 10
            anchors.top:templateWindow.top
            anchors.topMargin: mainScreenHeight * 45/600
        }




        Text
        {
            anchors.right:templateWindow.right
            anchors.rightMargin: mainScreenWidth * 20/1000
            anchors.top: templateWindow.top
            anchors.topMargin: mainScreenHeight * 16/600
            width: mainScreenWidth*0.08
            height: mainScreenHeight*0.13

            id:time
            //anchors.centerIn: parent
            color:"white"
            font.bold:true
            font.pixelSize: mainScreenWidth*28/1000
        }
        Timer
        {
            interval: 500
            running:true
            repeat:true
            onTriggered:
            {
                var date=new Date()
                time.text=date.toLocaleTimeString(Qt.locale("en_US"),"hh:mm")
            }
        }



    Rectangle
    {
        id:horizontalLine
        width:mainScreenWidth
        height:1
        color: "gray"
        anchors.top: templateWindow.top
        anchors.topMargin: mainScreenHeight*120/600
    }

    Rectangle
    {
        id:verticalLine
        width:1
        height:mainScreenHeight
        color: "gray"
        anchors.left: templateWindow.left
        anchors.leftMargin:  mainScreenWidth * 110/1000
        visible: templateWindow.verticalLineVisible
    }


}
