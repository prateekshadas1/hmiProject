import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0

Item {

    visible: true
    width: 1000
    height: 600
    id: window
    Image
    {
        anchors.fill:parent
        source:"Images/backgroud screen1.jpg"
    }

    Item
    {
        id:homeButton

        Image {
            id: home
            anchors.top:parent.top
            anchors.topMargin: window.height * 18/600
            anchors.left:parent.left
            anchors.leftMargin: window.width * 10/1000
            fillMode: Image.PreserveAspectFit
            source: "Images/home icon.png"
            height:window.height/6
            width:window.width*0.1

            MouseArea{
                anchors.fill: home
                onPressed: {
                    home.height = home.height * 0.75
                    home.width = home.width * 0.75
                }
                onReleased: {
                    home.height = window.height/6
                    home.width = window.width*0.1
                    rootWindow.changeScreen("MainScreen.qml")
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
            id:settingsIcon
            source:"Images/setting icon.png"
            width:window.width*0.1
            height:window.height/8.5
            anchors.top: parent.top
            anchors.topMargin: window.height * 25/600
            anchors.left: parent.left
            anchors.leftMargin:window.width * 120/1000
            fillMode: Image.PreserveAspectFit

            MouseArea{
                anchors.fill: settingsIcon
                onPressed: {
                    settingsIcon.height = settingsIcon.height * 0.75
                    settingsIcon.width = settingsIcon.weight * 0.75
                }
                onReleased: {
                    settingsIcon.height = window.height/6
                    settingsIcon.width = window.width*0.1
                    rootWindow.changeScreen("SettingsScreen.qml")
                }
            }

        }
        Text{
            id:headingSettings
            text:"SETTINGS  >  PHONE"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width * 18/1000
            color: "white"
            anchors.left:settingsIcon.right
            anchors.leftMargin: 10
            anchors.top:parent.top
            anchors.topMargin: window.height * 45/600
        }

//----Add Phone----//
        Rectangle{
            id: addRect
            //anchors.fill: radioButton
            height: window.height * 75/600
            width: window.width*  400/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 45/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: addRect.verticalCenter
                anchors.horizontalCenter: addRect.horizontalCenter
                color: "white"
                text: "Add Phone"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        MouseArea
        {
            id: addButton
            anchors.fill: addRect
            hoverEnabled: true
            onPressed: {
                addRect.height = addRect.height * 0.75
                addRect.width = addRect.width * 0.75
            }

            onReleased: {
                addRect.height = addRect.height / 0.75
                addRect.width = addRect.width / 0.75
            }

            onEntered: {
                addRect.color="light blue"
            }

            onExited: {
                addRect.color="transparent"
            }

    }

//----Delete Phone---//

        Rectangle{
            id: deleteRect
            height: window.height * 75/600
            width: window.width*  400/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 140/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{

                anchors.verticalCenter: deleteRect.verticalCenter
                anchors.horizontalCenter: deleteRect.horizontalCenter
                color: "white"
                text: "Delete Phone"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        MouseArea
        {
            id: deleteButton
            anchors.fill: deleteRect
            hoverEnabled: true
            onPressed: {
                deleteRect.height = deleteRect.height * 0.75
                deleteRect.width = deleteRect.width * 0.75


            }

            onReleased: {
                deleteRect.height = deleteRect.height / 0.75
                deleteRect.width = deleteRect.width / 0.75

            }

            onEntered: {
                deleteRect.color="light blue"
            }

            onExited: {
                deleteRect.color="transparent"
            }

    }

//---Connect---//

        Rectangle{
            id: connectRect
            height: window.height * 75/600
            width: window.width*  400/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 235/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                id: connectText
                anchors.verticalCenter: connectRect.verticalCenter
                anchors.horizontalCenter: connectRect.horizontalCenter
                color: "white"
                text: "Connect a Paired Phone"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        MouseArea
        {
            id: connectButton
            anchors.fill: connectRect
            hoverEnabled: true
            onPressed: {
                connectRect.height = connectRect.height * 0.75
                connectRect.width = connectRect.width * 0.75
                connectText.font.pixelSize = connectText.font.pixelSize * 0.75
            }

            onReleased: {
                connectRect.height = connectRect.height / 0.75
                connectRect.width = connectRect.width / 0.75
                connectText.font.pixelSize =  window.width * 30/1000
            }

            onEntered: {
                connectRect.color="light blue"
            }

            onExited: {
                connectRect.color="transparent"
            }

    }


//---Device Info---//

        Rectangle{
            id: deviceRect
            height: window.height * 75/600
            width: window.width*  400/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 330/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: deviceRect.verticalCenter
                anchors.horizontalCenter: deviceRect.horizontalCenter
                color: "white"
                text: "Device Info"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        MouseArea
        {
            id: deviceButton
            anchors.fill: deviceRect
            hoverEnabled: true
            onPressed: {
                deviceRect.height = deviceRect.height * 0.75
                deviceRect.width = deviceRect.width * 0.75
            }

            onReleased: {
                deviceRect.height = deviceRect.height / 0.75
                deviceRect.width = deviceRect.width / 0.75
            }

            onEntered: {
                deviceRect.color="light blue"
            }

            onExited: {
                deviceRect.color="transparent"
            }

    }

}
