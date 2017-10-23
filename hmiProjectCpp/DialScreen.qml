import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Item {

    id:dialqml
    property int dialScreenWidth: 1000
    property int dialScreenHeight: 600
    height: parent.height
    width: parent.width




    Background
    {
        mainScreenHeight: dialqml.height
        mainScreenWidth: dialqml.width
    }


    HomeButton
    {
        id: homeqml
        mainScreenHeight: dialqml.height
        mainScreenWidth: dialqml.width

    }

    Image{
        id:phoneIcon

        source:"Images/phone icon.png"
        width: parent.width*0.1
        height: parent.height/8.5
        anchors.top: parent.top
        anchors.topMargin: parent.height*25/600
        anchors.left: parent.left
        anchors.leftMargin:parent.width*120/1000
        fillMode: Image.PreserveAspectFit

        MouseArea{
            anchors.fill: phoneIcon
            onPressed: {
                phoneIcon.height = phoneIcon.height * 0.75
                phoneIcon.width = phoneIcon.weight * 0.75
            }
            onReleased: {
                phoneIcon.height = dialqml.height/6
                phoneIcon.width = dialqml.width*0.1
                //rootWindow.changeScreen("PhoneScreen.qml")
            }
        }

    }
    Text{
        id:phoneHeader
        text:"PHONE     >    DIAL"
        font.bold: true
        font.family: "Arial"
        font.pointSize: parent.height*18/600
        color: "white"
        anchors.left:phoneIcon.right
        anchors.leftMargin: parent.width*10/1000
        anchors.top:parent.top
        anchors.topMargin: parent.height*45/600
    }


    Time
    {
        anchors.right:parent.right
        anchors.rightMargin: parent.width*20/1000
        anchors.top: parent.top
        anchors.topMargin: parent.height*16/600
        mainScreenWidth: dialqml.width
        mainScreenHeight: dialqml.height
    }

    Rectangle
    {
        id:horizontalLine
        width:parent.width
        height:1
        color: "gray"
        anchors.top: parent.top
        anchors.topMargin: dialqml.height*120/600
    }
    Rectangle
    {
        id:verticalLine
        width:1
        height:parent.height
        color: "gray"
        anchors.top: parent.top
        anchors.left:parent.left
        anchors.leftMargin: dialqml.width*110/1000
    }




    Keypad{

        id: dialOne
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*100/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*250/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "1"


        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialOne.name)
                dialOne.color = "steelblue"
            }

            onReleased:
            {
                dialOne.color = "transparent"
            }
        }
    }

    Keypad{


        id: dialTwo
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*100/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*350/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "2"

        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialTwo.name)
                dialTwo.color = "steelblue"
            }

            onReleased:
            {
                dialTwo.color = "transparent"
            }
        }
    }


    Keypad{

        id: dialThree
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*100/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*450/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "3"

        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialThree.name)
                dialThree.color = "steelblue"
            }

            onReleased:
            {
                dialThree.color = "transparent"
            }
        }
    }


    Keypad{

        id: dialFour
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*160/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*250/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "4"

        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialFour.name)
                dialFour.color = "steelblue"
            }

            onReleased:
            {
                dialFour.color = "transparent"
            }
        }
    }

    Keypad{


        id: dialFive
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*160/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*350/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "5"

        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialFive.name)
                dialFive.color = "steelblue"
            }

            onReleased:
            {
                dialFive.color = "transparent"
            }
        }
    }


    Keypad{

        id: dialSix
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*160/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*450/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "6"


        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialSix.name)
                dialSix.color = "steelblue"
            }

            onReleased:
            {
                dialSix.color = "transparent"
            }
        }
    }

    Keypad{

        id: dialSeven
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*220/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*250/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "7"


        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialSeven.name)
                dialSeven.color = "steelblue"
            }

            onReleased:
            {
                dialSeven.color = "transparent"
            }
        }
    }

    Keypad{

        id: dialEight
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*220/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*350/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "8"

        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialEight.name)
                dialEight.color = "steelblue"
            }

            onReleased:
            {
                dialEight.color = "transparent"
            }
        }
    }


    Keypad{

        id: dialNine
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*220/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*450/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "9"


        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialNine.name)
                dialNine.color = "steelblue"
            }

            onReleased:
            {
                dialNine.color = "transparent"
            }
        }
    }

    Keypad{

        id: dialAsh
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*280/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*250/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "#"

        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialAsh.name)
                dialAsh.color = "steelblue"
            }

            onReleased:
            {
                dialAsh.color = "transparent"
            }
        }
    }

    Keypad{

        id: dialZero
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*280/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*350/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "0"

        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialZero.name)
                dialZero.color = "steelblue"
            }

            onPressAndHold:
            {
                txtedit.remove(txtedit.length-1,txtedit.length)

                txtedit.insert(txtedit.length,"+")
                dialZero.color = "steelblue"
            }

            onReleased:
            {
                dialZero.color = "transparent"
            }
        }
    }




    Keypad{

        id: dialStar
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*280/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*450/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "*"

        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                txtedit.insert(txtedit.length,dialStar.name)
                dialStar.color = "steelblue"
            }

            onReleased:
            {
                dialStar.color = "transparent"
            }
        }
    }


    Keypad{

        id: call
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*350/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*350/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight



        Image{
            source:"Images/phone icon.png"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit


            MouseArea
            {
                anchors.fill: parent
                onPressed:
                {
                    call.keypadHeight = (dialqml.height*50/600)*3/4
                    call.keypadWidth = (dialqml.width*50/1000)*3/4
                }

                onReleased:
                {
                    call.keypadHeight = (dialqml.height*50/600)
                    call.keypadWidth = (dialqml.width*50/1000)
                }
            }

        }

    }





    Keypad{

        id: del
        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*350/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*450/1000
        keypadHeight: parent.height*50/600
        keypadWidth: keypadHeight
        name: "<-"



        MouseArea
        {
            anchors.fill: parent
            onPressed:
            {
                del.keypadHeight = (dialqml.height*50/600)*3/4
                del.keypadWidth = (dialqml.width*50/1000)*3/4
                txtedit.remove(txtedit.length-1,txtedit.length)
            }

            onPressAndHold:
            {
                del.keypadHeight = (dialqml.height*50/600)*3/4
                del.keypadWidth = (dialqml.width*50/1000)*3/4
                txtedit.clear()
            }

            onReleased:
            {
                del.keypadHeight = (dialqml.height*50/600)
                del.keypadWidth = (dialqml.width*50/1000)
            }
        }
    }






    Flickable {
        id: flick

        anchors.top: horizontalLine.bottom
        anchors.topMargin: parent.height*50/600
        anchors.left: verticalLine.right
        anchors.leftMargin: parent.width*320/1000

        width: parent.width*125/1000;
        height: parent.height*28/600;
        clip: true

        function ensureVisible(r)
        {
            if (contentX >= r.x)
                contentX = r.x;
            else if (contentX+width <= r.x+r.width)
                contentX = r.x+r.width-width;
            if (contentY >= r.y)
                contentY = r.y;
            else if (contentY+height <= r.y+r.height)
                contentY = r.y+r.height-height;
        }

        TextEdit {
            id: txtedit
            width: flick.width
            height: flick.height
            focus: false
            color: "white"
            font.pixelSize: flick.height*20/28
            inputMethodHints: "ImhFormattedNumbersOnly"

            wrapMode: TextEdit.Wrap
            onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)
        }
    }
}
