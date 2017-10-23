import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.3



Item {
    id: browse
    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000
    width: rootWindow.screenWidth
    height: rootWindow.screenHeight

    Background
    {
        mainScreenHeight: browse.height
        mainScreenWidth: browse.width
    }

    Image {
        id: homeButtons
        anchors.top: browse.top
        anchors.topMargin: browse.height*18/600
        anchors.left: browse.left
        anchors.leftMargin: browse.width*10/1000
        fillMode: Image.PreserveAspectFit

        source: "Images/home icon.png"
        height: browse.height/6
        width: browse.width*0.1

        MouseArea{
            anchors.fill: homeButtons
            onPressed: {
                homeButtons.height = homeButtons.height*0.75
                homeButtons.width = homeButtons.width*0.75

            }

            onReleased: {
                homeButtons.height = browse.height/6
                homeButtons.width = browse.width*0.1
                rootWindow.changeScreen("MainScreen.qml")
            }

            }
    }




    Image{
        id:radioIcon
        source:"Images/radio1.png"
        width:browse.width*0.1
        height:browse.height/8.5
        anchors.top: parent.top
        anchors.topMargin: browse.height*25/600
        anchors.left: parent.left
        anchors.leftMargin:browse.width*120/1000
        fillMode: Image.PreserveAspectFit

        MouseArea{
           anchors.fill: radioIcon
           onEntered: {

}
           onPressed: {
               radioIcon.height = radioIcon.height * 0.75
               radioIcon.width = radioIcon.weight * 0.75
               console.log("on pressed")

           }
           onReleased: {
               radioIcon.height = browse.height/6
               radioIcon.width = browse.width*0.1
               console.log("on released")
               rootWindow.changeScreen("RadioScreen.qml")

           }
        }

    }
    Text{
        id:headingRadio
        text:"RADIO"
        font.bold: true
        font.family: "Arial"
        font.pointSize: browse.width*18/1000
        color: "white"
        anchors.left:radioIcon.right
        anchors.leftMargin: browse.width*10/1000
        anchors.top:parent.top
        anchors.topMargin:browse.height* 45/600
    }


    Time
    {
        anchors.right:parent.right
        anchors.rightMargin: parent.width*20/1000
        anchors.top: parent.top
        anchors.topMargin: parent.height*16/600
        mainScreenWidth: browse.width
        mainScreenHeight: browse.height
    }

    Rectangle
    {
        id:horizontalLine
        width:parent.width
        height:1
        color: "gray"
        anchors.top: parent.top
        anchors.topMargin: browse.height*120/600
    }
    Rectangle
    {
        id:verticalLine
        width:1
        height:parent.height
        color: "gray"
        anchors.top: parent.top
        anchors.left:parent.left
        anchors.leftMargin: browse.width*110/1000
    }




Flickable{
    id:flickable
    clip:true
    anchors.top: horizontalLine.bottom
    anchors.topMargin: 5
    anchors.left: verticalLine.right
    anchors.leftMargin: 5
    ScrollIndicator.vertical: ScrollIndicator { }

   height: browse.height * 400/600
    width: browse.width * 700/1000

    contentWidth: flickable.width
    contentHeight: parent.height*2


    Button{
        id:stations
        width:browse.width*650/1000
        height:browse.height*50/600
        anchors.top:parent.top
        anchors.topMargin: browse.height*25/600
        anchors.left:parent.left
        anchors.leftMargin: browse.width*25/1000
        background: Rectangle{
            id: rect
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }
        MouseArea{
            anchors.fill: stations
            onPressed: {
                rect.color = "steelblue"
            }
            onReleased: {
                rect.color="transparent"
            }
        }

        Text{
            id:headingName
            text:"STATION NAMES"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin:browse.width* 40/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

    }

        Text{
            id:frequencyName
            anchors.left:parent.left
            anchors.leftMargin:browse.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

            text:"FREQUENCY"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000

        }



}
    Button{
        id:r1
        width:browse.width*650/1000
        height:browse.height*50/600
        anchors.top:stations.bottom
        anchors.topMargin: 0
        anchors.left:parent.left
        anchors.leftMargin: browse.width*25/1000
        background: Rectangle{
            id:michiganRadio
            anchors.fill: r1
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }
        MouseArea{
            anchors.fill: r1
            hoverEnabled: true
            onHoveredChanged: {
                michiganRadio.color = "steelblue"
            }
            onExited: {
                michiganRadio.color="transparent"
            }
            onPressed: {
                michiganRadio.color = "steelblue"
            }
            onReleased: {
                michiganRadio.color="transparent"
            }
        }

        Text{
            id:headingName1
            text:"Michigan Radio"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: browse.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

    }

        Text{
            id:frequencyName1
            anchors.left:r1.left
            anchors.leftMargin:browse.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

            text:"91.7"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000

        }



}
    Button{
        id:r2
        width:browse.width*650/1000
        height:browse.height*50/600
        anchors.top:r1.bottom
        anchors.topMargin: 0
        anchors.left:parent.left
        anchors.leftMargin: browse.width*25/1000
        background: Rectangle{
            anchors.fill: r2
            id:b93
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }
        MouseArea{
            anchors.fill: r2
            hoverEnabled: true
            onHoveredChanged: {
                b93.color = "steelblue"
            }
            onExited: {
                b93.color="transparent"
            }
            onPressed: {
                b93.color = "steelblue"
            }
            onReleased: {
                b93.color="transparent"
            }
        }

        Text{
            id:headingName2
            text:"B-93"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: browse.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

    }

        Text{
            id:frequencyName2
            anchors.left:r2.left
            anchors.leftMargin:browse.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

            text:"93.7"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000

        }



}
    Button{
        id:r3
        width:browse.width*650/1000
        height:browse.height*50/600
        anchors.top:r2.bottom
        anchors.topMargin: 0
        anchors.left:parent.left
        anchors.leftMargin: browse.width*25/1000
        background: Rectangle{
            anchors.fill: r3
            id:wdet
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }
        MouseArea{
            anchors.fill: r3
            hoverEnabled: true
            onHoveredChanged: {
                wdet.color = "steelblue"
            }
            onExited: {
                wdet.color="transparent"
            }
            onPressed: {
                wdet.color = "steelblue"
            }
            onReleased: {
                wdet.color="transparent"
            }
        }

        Text{
            id:headingName3
            text:"wdet"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: browse.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

    }

        Text{
            id:frequencyName3
            anchors.left:r3.left
            anchors.leftMargin:browse.width*400/1000
            anchors.top:parent.top
            anchors.topMargin:browse.height* 10/600

            text:"101.9"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000

        }



}
    Button{
        id:r4
        width:browse.width*650/1000
        height:browse.height*50/600
        anchors.top:r3.bottom
        anchors.topMargin: 0
        anchors.left:parent.left
        anchors.leftMargin: browse.width*25/1000
        background: Rectangle{
            anchors.fill: r4
            id:wdvd
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }
        MouseArea{
            anchors.fill: r4
            hoverEnabled: true
            onHoveredChanged: {
                wdvd.color = "steelblue"
            }
            onExited: {
                wdvd.color="transparent"
            }
            onPressed: {
                wdvd.color = "steelblue"
            }
            onReleased: {
                wdvd.color="transparent"
            }
        }

        Text{
            id:headingName4
            text:"963 WDVD"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: browse.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

    }

        Text{
            id:frequencyName4
            anchors.left:r4.left
            anchors.leftMargin:browse.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

            text:"96.3"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000

        }



}
    Button{
        id:r5
        width:browse.width*650/1000
        height:browse.height*50/600
        anchors.top:r4.bottom
        anchors.topMargin: 0
        anchors.left:parent.left
        anchors.leftMargin: browse.width*25/1000
        background: Rectangle{
            anchors.fill: r5
            id:channel955
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }
        MouseArea{
            anchors.fill: r5
            hoverEnabled: true
            onHoveredChanged: {
                channel955.color = "steelblue"
            }
            onExited: {
                channel955.color="transparent"
            }

            onPressed: {
                channel955.color = "steelblue"
            }
            onReleased: {
                channel955.color="transparent"
            }
        }

        Text{
            id:headingName5
            text:"Channel 955"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: browse.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

    }

        Text{
            id:frequencyName5
            anchors.left:r5.left
            anchors.leftMargin:browse.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

            text:"95.5"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000

        }



}
    Button{
        id:r6
        width:browse.width*650/1000
        height:browse.height*50/600
        anchors.top:r5.bottom
        anchors.topMargin: 0
        anchors.left:parent.left
        anchors.leftMargin: browse.width*25/1000
        background: Rectangle{
            anchors.fill: r6
            id:w4
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }
        MouseArea{
            anchors.fill: r6
            hoverEnabled: true
            onHoveredChanged: {
                w4.color = "steelblue"
            }
            onExited: {
                w4.color="transparent"
            }
            onPressed: {
                w4.color = "steelblue"
            }
            onReleased: {
                w4.color="transparent"
            }
        }

        Text{
            id:headingName6
            text:"W4 Country"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: browse.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

    }

        Text{
            id:frequencyName6
            anchors.left:r6.left
            anchors.leftMargin:browse.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

            text:"102.9"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000

        }



}
    Button{
        id:r7
        width:browse.width*650/1000
        height:browse.height*50/600
        anchors.top:r6.bottom
        anchors.topMargin: 0
        anchors.left:parent.left
        anchors.leftMargin: browse.width*25/1000
        background: Rectangle{
            anchors.fill: r7
            id:powerTalk
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }
        MouseArea{
            anchors.fill: r7
            hoverEnabled: true
            onHoveredChanged: {
                powerTalk.color = "steelblue"
            }
            onExited: {
                powerTalk.color="transparent"
            }
            onPressed: {
                powerTalk.color = "steelblue"
            }
            onReleased: {
                powerTalk.color="transparent"
            }
        }

        Text{
            id:headingName7
            text:"WHPR Power Talk 88.1 FM"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: browse.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

    }

        Text{
            id:frequencyName7
            anchors.left:r7.left
            anchors.leftMargin:browse.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: browse.height*10/600

            text:"88.1"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: browse.width*16/1000

        }



}


}

}
