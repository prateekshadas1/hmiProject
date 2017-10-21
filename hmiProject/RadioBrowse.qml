import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.3



Item {
    id:window
    visible:true
    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000
    height: rootWindow.height
    width: rootWindow.width
    Background
    {
        mainScreenHeight: window.height
        mainScreenWidth: window.width
    }

    Image {
        id: homeButton
        anchors.top: window.top
        anchors.topMargin: window.height*18/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*10/1000
        fillMode: Image.PreserveAspectFit

        source: "Images/home icon.png"
        height:window.height/6
        width:window.width*0.1
        MouseArea{
            anchors.fill: homeButton
            onClicked: {
                homeButton.height=homeButton.height*0.75
                homeButton.width=homeButton.width*0.75
                window.visible=false
                loader.setSource("main.qml")



            }
    }
    }


    Image{
        id: radioIcon
        source:"Images/radio1.png"
        width:window.width*0.1
        height:window.height/8.5
        anchors.top: parent.top
        anchors.topMargin: window.height*25/600
        anchors.left: parent.left
        anchors.leftMargin:window.width*120/1000
        fillMode: Image.PreserveAspectFit

        MouseArea{
            anchors.fill: radioIcon
            onPressed: {
                radioIcon.height = radioIcon.height * 0.75
                radioIcon.width = radioIcon.weight * 0.75
            }
            onReleased: {
                radioIcon.height = window.height/8.5
                radioIcon.width = window.width*0.1
                rootWindow.changeScreen("RadioScreen.qml")
            }
        }

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

//Rectangle{
//    id:frame
//    x: 193
//    y: 200
//    height:300
//    width:650
//    color:"transparent"



Flickable{
    id:flickable
    clip:true
    anchors.fill: parent
    ScrollIndicator.vertical: ScrollIndicator { }


    contentWidth: parent.width *2
    contentHeight: parent.height*2
//    ScrollBar{
//        anchors.top:parent.top
//        anchors.topMargin: 125
//        anchors.left:parent.left
//        anchors.leftMargin: 400
//        visible: true
//        size: frame.width/frame.height


//    }

    Button{
        clip:true
        id:stations
        width:window.width*650/1000
        height:window.height*50/600
        anchors.top:parent.top
        anchors.topMargin: window.height*200/600
        anchors.left:parent.left
        anchors.leftMargin: window.width*190/1000
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            id:headingName
            text:"STATION NAMES"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin:window.width* 40/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

    }

        Text{
            id:frequencyName
            anchors.left:parent.left
            anchors.leftMargin:window.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

            text:"FREQUENCY"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000

        }



}
    Button{
        clip:true
        id:r1
        y: window.height*250/600
        width:window.width*650/1000
        height:window.height*50/600
        anchors.top:stations.bottom
        anchors.left:parent.left
        anchors.leftMargin: window.width*190/1000
        background: Rectangle{
            anchors.fill: r1
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            id:headingName1
            text:"Michigan Radio"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: window.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

    }

        Text{
            id:frequencyName1
            anchors.left:r1.left
            anchors.leftMargin:window.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

            text:"91.7"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000

        }



}
    Button{
        id:r2
        y: window.height*250/600
        width:window.width*650/1000
        height:window.height*50/600
        anchors.top:r1.bottom
        anchors.left:parent.left
        anchors.leftMargin: window.width*190/1000
        background: Rectangle{
            anchors.fill: r2
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            id:headingName2
            text:"B-93"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: window.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

    }

        Text{
            id:frequencyName2
            anchors.left:r2.left
            anchors.leftMargin:window.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

            text:"93.7"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000

        }



}
    Button{
        id:r3
        y: window.height*250/600
        width:window.width*650/1000
        height:window.height*50/600
        anchors.top:r2.bottom
        anchors.left:parent.left
        anchors.leftMargin: window.width*190/1000
        background: Rectangle{
            anchors.fill: r3
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            id:headingName3
            text:"wdet"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: window.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

    }

        Text{
            id:frequencyName3
            anchors.left:r3.left
            anchors.leftMargin:window.width*400/1000
            anchors.top:parent.top
            anchors.topMargin:window.height* 10/600

            text:"101.9"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000

        }



}
    Button{
        id:r4
        y: window.height*250/600
        width:window.width*650/1000
        height:window.height*50/600
        anchors.top:r3.bottom
        anchors.left:parent.left
        anchors.leftMargin: window.width*190/1000
        background: Rectangle{
            anchors.fill: r4
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            id:headingName4
            text:"963 WDVD"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: window.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

    }

        Text{
            id:frequencyName4
            anchors.left:r4.left
            anchors.leftMargin:window.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

            text:"96.3"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000

        }



}
    Button{
        id:r5
        y: window.height*250/600
        width:window.width*650/1000
        height:window.height*50/600
        anchors.top:r4.bottom
        anchors.left:parent.left
        anchors.leftMargin: window.width*190/1000
        background: Rectangle{
            anchors.fill: r5
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            id:headingName5
            text:"Channel 955"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: window.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

    }

        Text{
            id:frequencyName5
            anchors.left:r5.left
            anchors.leftMargin:window.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

            text:"95.5"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000

        }



}
    Button{
        id:r6
        y: window.height*250/600
        width:window.width*650/1000
        height:window.height*50/600
        anchors.top:r5.bottom
        anchors.left:parent.left
        anchors.leftMargin: window.width*190/1000
        background: Rectangle{
            anchors.fill: r6
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            id:headingName6
            text:"W4 Country"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: window.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

    }

        Text{
            id:frequencyName6
            anchors.left:r6.left
            anchors.leftMargin:window.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

            text:"102.9"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000

        }



}
    Button{
        id:r7
        y: window.height*250/600
        width:window.width*650/1000
        height:window.height*50/600
        anchors.top:r6.bottom
        anchors.left:parent.left
        anchors.leftMargin: window.width*190/1000
        background: Rectangle{
            anchors.fill: r7
            color: "transparent"
            border.width: 1
            border.color: "gray"
        }

        Text{
            id:headingName7
            text:"WHPR Power Talk 88.1 FM"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000
            anchors.left:parent.left
            anchors.leftMargin: window.width*40/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

    }

        Text{
            id:frequencyName7
            anchors.left:r7.left
            anchors.leftMargin:window.width*400/1000
            anchors.top:parent.top
            anchors.topMargin: window.height*10/600

            text:"88.1"
            color:"white"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width*16/1000

        }



}


}

//}
}
