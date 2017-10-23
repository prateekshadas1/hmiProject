import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0

Item {

    visible: true
    width:parent.width
    height: parent.height
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
        text:"SETTINGS  >  MEDIA"
        font.bold: true
        font.family: "Arial"
        font.pointSize: window.width * 18/1000
        color: "white"
        anchors.left:settingsIcon.right
        anchors.leftMargin: 10
        anchors.top:parent.top
        anchors.topMargin: window.height * 45/600
    }

//----Bass----//

    Rectangle{
        id: bassRect
        //anchors.fill: radioButton
        height: window.height * 75/600
        width: window.width*  200/1000
        anchors.left: verticalLine.right
        anchors.leftMargin: window.width * 45/1000
        anchors.top: horizontalLine.bottom
        anchors.topMargin: window.height * 45/600
        color: "transparent"
        border.color: "white"
        border.width: 1
        Text{
            anchors.verticalCenter: bassRect.verticalCenter
            anchors.horizontalCenter: bassRect.horizontalCenter
            color: "white"
            text: "Bass"
            font.bold: true
            font.pixelSize: window.width * 30/1000
        }
    }

    Slider{
        id:slider
        height: window.height * 20/600
        width: window.width * 300/1000
        anchors.left:bassRect.right
        anchors.leftMargin: window.width * 150/1000
        anchors.top: horizontalLine.bottom
        anchors.topMargin: window.height * 67.5/600
        from: -6
        to: -6

        background: Rectangle {
            x: slider.leftPadding
            y: slider.topPadding + slider.availableHeight / 2 - height / 2
            implicitWidth: window.width * 200/1000
            implicitHeight: window.height * 4/600
            width: slider.availableWidth
            height: implicitHeight
            radius: window.width * 0.002
            color: "#bdbebf"

            Rectangle {
                width: slider.visualPosition * parent.width
                height: parent.height
                color: "blue"
                radius: window.width * 0.002
            }
        }

        handle: Rectangle {
            x: slider.leftPadding + slider.visualPosition * (slider.availableWidth - width)
            y: slider.topPadding + slider.availableHeight / 2 - height / 2
            implicitWidth: window.width * 26/1000
            implicitHeight: implicitWidth
            radius: implicitWidth/2
            color: slider.pressed ? "#f0f0f0" : "#f6f6f6"
            border.color: "#bdbebf"
        }
    }

    Text{
        id:lowText
        anchors.left:slider.left
        anchors.top:slider.bottom
        anchors.topMargin: window.height * 5/1000
        font.bold: true
        text:"-6"
        color:"white"
        font.pixelSize: window.width * 18/1000
    }


    Text{
        id:highText
        anchors.left:slider.right
        anchors.top:slider.bottom
        anchors.topMargin: window.height * 5/1000
        text: "+6"
        font.bold: true
        color: "white"
        font.pixelSize: window.width * 18/1000

    }

//----Treble---//

    Rectangle{
        id: trebleRect
        height: window.height * 75/600
        width: window.width*  200/1000
        anchors.left: verticalLine.right
        anchors.leftMargin: window.width * 45/1000
        anchors.top: horizontalLine.bottom
        anchors.topMargin: window.height * 140/600
        color: "transparent"
        border.color: "white"
        border.width: 1

        Text{
            anchors.verticalCenter: trebleRect.verticalCenter
            anchors.horizontalCenter: trebleRect.horizontalCenter
            color: "white"
            text: "Treble"
            font.bold: true
            font.pixelSize: window.width * 30/1000
        }
    }


    Slider{
        id:slider2
        height: window.height * 20/600
        width: window.width * 300/1000
        anchors.left:trebleRect.right
        anchors.leftMargin: window.width * 150/1000
        anchors.top: horizontalLine.bottom
        anchors.topMargin: window.height * 162.5/600
        from:-6
        to:6

        background: Rectangle {
            x: slider2.leftPadding
            y: slider2.topPadding + slider2.availableHeight / 2 - height / 2
            implicitWidth: window.width * 200/1000
            implicitHeight: window.height * 4/600
            width: slider2.availableWidth
            height: implicitHeight
            radius: window.width * 0.002
            color: "#bdbebf"

            Rectangle {
                width: slider2.visualPosition * parent.width
                height: parent.height
                color: "blue"
                radius: window.width * 0.002
            }
        }

        handle: Rectangle {
            x: slider2.leftPadding + slider2.visualPosition * (slider2.availableWidth - width)
            y: slider2.topPadding + slider2.availableHeight / 2 - height / 2
            implicitWidth: window.width * 26/1000
            implicitHeight: implicitWidth
            radius: implicitWidth/2
            color: slider2.pressed ? "#f0f0f0" : "#f6f6f6"
            border.color: "#bdbebf"
        }
    }

    Text{
        id:lowText2
        anchors.left:slider2.left
        anchors.top:slider2.bottom
        anchors.topMargin: window.height * 5/1000
        font.bold: true
        text:"-6"
        color:"white"
        font.pixelSize: window.width * 18/1000
    }
    Text{
        id:highText2
        anchors.left:slider2.right
        anchors.top:slider2.bottom
        anchors.topMargin: window.height * 5/1000
        text: "+6"
        font.bold: true
        color: "white"
        font.pixelSize: window.width * 18/1000
    }

//---Fade---//

    Rectangle{
        id: fadeRect
        height: window.height * 75/600
        width: window.width*  200/1000
        anchors.left: verticalLine.right
        anchors.leftMargin: window.width * 45/1000
        anchors.top: horizontalLine.bottom
        anchors.topMargin: window.height * 235/600
        color: "transparent"
        border.color: "white"
        border.width: 1
        Text{
            id: connectText
            anchors.verticalCenter: fadeRect.verticalCenter
            anchors.horizontalCenter: fadeRect.horizontalCenter
            color: "white"
            text: "Fade"
            font.bold: true
            font.pixelSize: window.width * 30/1000
        }
    }

    Slider{
        id:slider3
        height: window.height * 20/600
        width: window.width * 300/1000
        anchors.left:fadeRect.right
        anchors.leftMargin: window.width * 150/1000
        anchors.top: horizontalLine.bottom
        anchors.topMargin: window.height * 257.5/600
        from:-6
        to:6

        background: Rectangle {
            x: slider3.leftPadding
            y: slider3.topPadding + slider3.availableHeight / 2 - height / 2
            implicitWidth: window.width * 200/1000
            implicitHeight: window.height * 4/600
            width: slider3.availableWidth
            height: implicitHeight
            radius: window.width * 0.002
            color: "#bdbebf"

            Rectangle {
                width: slider3.visualPosition * parent.width
                height: parent.height
                color: "blue"
                radius: window.width * 0.002
            }
        }

        handle: Rectangle {
            x: slider3.leftPadding + slider3.visualPosition * (slider3.availableWidth - width)
            y: slider3.topPadding + slider3.availableHeight / 2 - height / 2
            implicitWidth: window.width * 26/1000
            implicitHeight: implicitWidth
            radius: implicitWidth/2
            color: slider3.pressed ? "#f0f0f0" : "#f6f6f6"
            border.color: "#bdbebf"
        }
    }

    Text{
        id:lowText3
        anchors.left:slider3.left
        anchors.top:slider3.bottom
        anchors.topMargin: window.height * 5/1000
        font.bold: true
        text:"-6"
        color:"white"
        font.pixelSize: window.width * 18/1000
    }
    Text{
        id:highText3
        anchors.left:slider3.right
        anchors.top:slider3.bottom
        anchors.topMargin: window.height * 5/1000
        text: "+6"
        font.bold: true
        color: "white"
        font.pixelSize: window.width * 18/1000
    }

//---Balance---//

    Rectangle{
        id: balanceRect
        height: window.height * 75/600
        width: window.width*  200/1000
        anchors.left: verticalLine.right
        anchors.leftMargin: window.width * 45/1000
        anchors.top: horizontalLine.bottom
        anchors.topMargin: window.height * 330/600
        color: "transparent"
        border.color: "white"
        border.width: 1
        Text{
            anchors.verticalCenter: balanceRect.verticalCenter
            anchors.horizontalCenter: balanceRect.horizontalCenter
            color: "white"
            text: "Balance"
            font.bold: true
            font.pixelSize: window.width * 30/1000
        }
    }

    Slider{
        id:slider4
        height: window.height * 20/600
        width: window.width * 300/1000
        anchors.left:fadeRect.right
        anchors.leftMargin: window.width * 150/1000
        anchors.top: horizontalLine.bottom
        anchors.topMargin: window.height * 352.5/600
        from:-6
        to:6

        background: Rectangle {
            x: slider4.leftPadding
            y: slider4.topPadding + slider4.availableHeight / 2 - height / 2
            implicitWidth: window.width * 200/1000
            implicitHeight: window.height * 4/600
            width: slider4.availableWidth
            height: implicitHeight
            radius: window.width * 0.002
            color: "#bdbebf"

            Rectangle {
                width: slider4.visualPosition * parent.width
                height: parent.height
                color: "blue"
                radius: window.width * 0.002
            }
        }

        handle: Rectangle {
            x: slider4.leftPadding + slider4.visualPosition * (slider4.availableWidth - width)
            y: slider4.topPadding + slider4.availableHeight / 2 - height / 2
            implicitWidth: window.width * 26/1000
            implicitHeight: implicitWidth
            radius: implicitWidth/2
            color: slider4.pressed ? "#f0f0f0" : "#f6f6f6"
            border.color: "#bdbebf"
        }
    }

    Text{
        id:lowText4
        anchors.left:slider4.left
        anchors.top:slider4.bottom
        anchors.topMargin: window.height * 5/1000
        font.bold: true
        text:"-6"
        color:"white"
        font.pixelSize: window.width * 18/1000
    }
    Text{
        id:highText4
        anchors.left:slider4.right
        anchors.top:slider4.bottom
        anchors.topMargin: window.height * 5/1000
        text: "+6"
        font.bold: true
        color: "white"
        font.pixelSize: window.width * 18/1000
    }
}
