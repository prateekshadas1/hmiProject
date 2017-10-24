import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1

Item {
<<<<<<< HEAD

    visible: true
    width: rootWindow.screenWidth
    height: rootWindow.screenHeight
=======
    visible: true

    property int screenHeight: 600
    property int screenWidth: 1000
    width: 1000
    height: 600
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
    id: window

    Image
    {
        anchors.fill:parent
        source:"Images/backgroud screen1.jpg"
    }

    Item
    {
        id:homeButton
<<<<<<< HEAD


        Image {
            id: home
            objectName: "homeButton"
=======
        objectName: "mainScreenButton"
        signal refresh

        Image {
            id: home
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
            anchors.top:parent.top
            anchors.topMargin: 18
            anchors.left:parent.left
            anchors.leftMargin: 10
            fillMode: Image.PreserveAspectFit
            source: "Images/home icon.png"
            height:window.height/6
            width:window.width*0.1

            MouseArea{
                anchors.fill: home
<<<<<<< HEAD
=======
                objectName: homeButton.objectName
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
                onPressed: {
                    home.height = home.height * 0.75
                    home.width = home.weight * 0.75
                }
                onReleased: {
                    home.height = window.height/6
                    home.width = window.width*0.1
<<<<<<< HEAD
                    rootWindow.changeScreen("MainScreen.qml")
=======
                    homeButton.refresh()
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
                }
            }
        }
    }

    Item {
        anchors.right:parent.right
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 16
        width: window.width*0.08
        height: window.height*0.13
        Text
        {
            id:time
           anchors.centerIn: parent
           color:"white"
           font.bold:true
           font.pixelSize: window.width*28/1000
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
        anchors.left: parent.left
        anchors.leftMargin:  window.width * 110/1000
    }

    Image{
<<<<<<< HEAD
        id:settingsIcon
        source:"Images/setting icon.png"
        width:window.width*0.1
        height:window.height/8.5
        anchors.top: parent.top
        anchors.topMargin: window.height * 25/600
        anchors.left: parent.left
        anchors.leftMargin:window.width *120/1000
        fillMode: Image.PreserveAspectFit
=======
            id:settingsIcon
            source:"Images/setting icon.png"
            width:window.width*0.1
            height:window.height/8.5
            anchors.top: parent.top
            anchors.topMargin: 25
            anchors.left: parent.left
            anchors.leftMargin:120
            fillMode: Image.PreserveAspectFit
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab

        }
        Text{
            id:headingSettings
            text:"SETTINGS"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width * 18/1000
            color: "white"
            anchors.left:settingsIcon.right
            anchors.leftMargin: 10
            anchors.top:parent.top
            anchors.topMargin: window.height * 45/600
        }

<<<<<<< HEAD

//    ScreenTemplate{
//         mainScreenHeight: 600
//         mainScreenWidth: 1000
//         verticalLineVisible: true
//         imageSource: "qrc:/Images/setting icon.png"
//         changeScreen: "SettingsScreen"
//         screenHeading: "SETTINGS"
//    }

//----Radio----//
        Rectangle{
            id: radioRect
=======
//----Radio----//
        Rectangle{
            id: radioRect
            objectName: "radioButton"
            signal refresh(var value)
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
            //anchors.fill: radioButton
            height: window.height * 75/600
            width: window.width*  300/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 45/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: radioRect.verticalCenter
                anchors.horizontalCenter: radioRect.horizontalCenter
                color: "white"
                text: "Radio"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        MouseArea
        {
            id: radioButton
            anchors.fill: radioRect
            hoverEnabled: true
            onPressed: {
                radioRect.height = radioRect.height * 0.75
                radioRect.width = radioRect.width * 0.75
            }

            onReleased: {
                radioRect.height = radioRect.height / 0.75
                radioRect.width = radioRect.width / 0.75
<<<<<<< HEAD
                rootWindow.changeScreen("RadioSettings.qml")
=======
                radioRect.refresh("radioButton")

//                rootWindow.changeScreen("RadioSettings.qml")
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
            }

            onEntered: {
                radioRect.color="light blue"
            }

            onExited: {
                radioRect.color="transparent"
            }

    }

//----Media---//

        Rectangle{
            id: mediaRect
<<<<<<< HEAD
=======
            objectName: "mediaButton"
            signal refresh(var value)
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
            height: window.height * 75/600
            width: window.width*  300/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 140/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: mediaRect.verticalCenter
                anchors.horizontalCenter: mediaRect.horizontalCenter
                color: "white"
                text: "Media"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        MouseArea
        {
            id: mediaButton
            anchors.fill: mediaRect
            hoverEnabled: true
            onPressed: {
                mediaRect.height = mediaRect.height * 0.75
                mediaRect.width = mediaRect.width * 0.75
            }

            onReleased: {
                mediaRect.height = mediaRect.height / 0.75
                mediaRect.width = mediaRect.width / 0.75
<<<<<<< HEAD
                rootWindow.changeScreen("MediaSettings.qml")
=======
                mediaRect.refresh("mediaButton")

//                rootWindow.changeScreen("MediaSettings.qml")
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
            }

            onEntered: {
                mediaRect.color="light blue"
            }

            onExited: {
                mediaRect.color="transparent"
            }
    }

//---Phone---//

        Rectangle{
            id: phoneRect
<<<<<<< HEAD
=======
            objectName: "phoneButton"
            signal refresh(var value)
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
            height: window.height * 75/600
            width: window.width*  300/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 235/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: phoneRect.verticalCenter
                anchors.horizontalCenter: phoneRect.horizontalCenter
                color: "white"
                text: "Phone"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        MouseArea
        {
            id: phoneButton
            anchors.fill: phoneRect
            hoverEnabled: true
            onPressed: {
                phoneRect.height = phoneRect.height * 0.75
                phoneRect.width = phoneRect.width * 0.75
            }

            onReleased: {
                phoneRect.height = phoneRect.height / 0.75
                phoneRect.width = phoneRect.width / 0.75
<<<<<<< HEAD
                rootWindow.changeScreen("PhoneSettings.qml")
=======
                phoneRect.refresh("phoneButton")

//                rootWindow.changeScreen("PhoneSettings.qml")
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
            }

            onEntered: {
                phoneRect.color="light blue"
            }

            onExited: {
                phoneRect.color="transparent"
            }
    }

//---Navigation---//

        Rectangle{
            id: navigationRect
<<<<<<< HEAD
=======
            objectName: "navigationButton"
            signal refresh(var value)
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
            height: window.height * 75/600
            width: window.width*  300/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 330/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: navigationRect.verticalCenter
                anchors.horizontalCenter: navigationRect.horizontalCenter
                color: "white"
                text: "Navigation"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        MouseArea
        {
            id: navigationButton
            anchors.fill: navigationRect
            hoverEnabled: true
            onPressed: {
                navigationRect.height = navigationRect.height * 0.75
                navigationRect.width = navigationRect.width * 0.75
            }

            onReleased: {
                navigationRect.height = navigationRect.height / 0.75
                navigationRect.width = navigationRect.width / 0.75
<<<<<<< HEAD
                rootWindow.changeScreen("NavigationSettings.qml")
            }

            onEntered: {
                navigationRect.color="light blue"
=======
                navigationRect.refresh("navigationButton")

//                rootWindow.changeScreen("NavigationSettings.qml")
            }

            onEntered: {
                navigationRect.color="blue"
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
            }

            onExited: {
                navigationRect.color="transparent"
            }

    }


}
