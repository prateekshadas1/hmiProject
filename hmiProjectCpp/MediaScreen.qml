import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1


Item
{
    visible: true
    property int screenHeight: 600
    property int screenWidth: 1000
    width: screenWidth
    height: screenHeight
    id: window
    Image
    {
        id:background
        source:"Images/backgroud screen1.jpg"
        anchors.fill: window
    }

    ScreenTemplate{

        mainScreenHeight: window.height
        mainScreenWidth: window.width
        verticalLineVisible:true
        imageSource:"Images/media.png"
        //property string changeScreen: ""
        screenHeading:"Media"
        changeScreen: "MediaScreen.qml"

    }



    Rectangle{id:usb
        height:parent.height*125/600
        width:parent.width*110/1000
        anchors.top:parent.top
        anchors.topMargin:window.height*120/600
        anchors.left:window.left
        color:"transparent"
        border.color:"gray"
        MouseArea{hoverEnabled:true
            anchors.fill:usb
            onPressed:{usb.color="lightblue"
            }
            onEntered:{usb.color="lightblue"}
            onExited:{usb.color="transparent"}
            onReleased:{usb.color="transparent"}

        }


    }
    Text{text:"USB"
        color:"white"
        anchors.top:usb.top
        anchors.topMargin:usb.height/2.5
        anchors.horizontalCenter:usb.horizontalCenter
        font.pointSize:window.height*14/600
        font.bold:true
        font.family: "Arial"
    }



    Rectangle
    {id:cd
        height:parent.height*125/600
        width:parent.width*110/1000
        anchors.top:usb.bottom
        anchors.left:window.left
        color:"transparent"
        border.color:"gray"

        MouseArea{hoverEnabled:true
            anchors.fill:cd
            onPressed:{cd.color="lightblue"

            }
            onEntered:{cd.color="lightblue"}
            onExited:{cd.color="transparent"}
            onReleased:{cd.color="transparent"}

        }


    }

    Text{text:"CD"
        color:"white"
        anchors.top:cd.top
        anchors.topMargin:cd.height/2.5
        anchors.horizontalCenter:cd.horizontalCenter
        font.pointSize:window.height*14/600
        font.bold:true
        font.family: "Arial"
    }


    Rectangle{id:dvd
        height:parent.height*125/600
        width:parent.width*110/1000
        anchors.top:cd.bottom
        anchors.left:window.left
        color:"transparent"
        border.color:"gray"
        MouseArea{hoverEnabled:true
            anchors.fill:dvd
            onPressed:{dvd.color="lightblue"}
            onEntered:{dvd.color="lightblue"}
            onExited:{dvd.color="transparent"}
            onReleased:{dvd.color="transparent"}

        }}

    Text{text:"DVD"
        color:"white"
        anchors.top:dvd.top
        anchors.topMargin:dvd.height/2.5
        anchors.horizontalCenter:dvd.horizontalCenter
        font.pointSize:window.height*14/600
        font.bold:true
        font.family: "Arial"
    }


    Rectangle{id:bt
        height:parent.height*125/600
        width:parent.width*110/1000
        anchors.top:dvd.bottom
        anchors.left:window.left
        color:"transparent"
        border.color:"gray"
        MouseArea{hoverEnabled:true
            anchors.fill:bt
            onPressed:{bt.color="lightblue"}


            onEntered:{bt.color="lightblue"}
            onExited:{bt.color="transparent"}
            onReleased:{bt.color="transparent"}


        }}

    Text{text:"BT"
        color:"white"
        anchors.top:bt.top
        anchors.topMargin:bt.height/2.5
        anchors.horizontalCenter:bt.horizontalCenter
        font.pointSize:window.height*14/600
        font.bold:true
        font.family: "Arial"
    }


    Item{id:forward
        height:window.height*60/600
        width:window.width*0.06
        anchors.top:parent.top
        anchors.topMargin:window.height*510/600
        anchors.left:parent.left
        anchors.leftMargin:window.width*390/1000
        Image{id:image1
            source:"Images/forward .png"
            height:parent.height
            width:parent.width
            fillMode:Image.PreserveAspectFit}
        MouseArea{anchors.fill:image1}

    }

    Item{id:pause
        height:window.height*60/600
        width:window.width*0.06
        anchors.top:parent.top
        anchors.topMargin:window.height*510/600
        anchors.left:parent.left
        anchors.leftMargin:window.width*460/1000
        Image{id:image2
            source:"Images/play 123.png"
            height:parent.height
            width:parent.width
            fillMode:Image.PreserveAspectFit}
        MouseArea{anchors.fill:image2}

    }

    Item{id:play
        height:window.height*60/600
        width:window.width*0.06
        anchors.top:parent.top
        anchors.topMargin:window.height*510/600
        anchors.left:parent.left
        anchors.leftMargin:window.width*530/1000
        Image{id:image3
            source:"Images/123.png"
            height:parent.height
            width:parent.width
            fillMode:Image.PreserveAspectFit}
        MouseArea{anchors.fill:image3}
    }


    Item{id:backword
        height:window.height*60/600
        width:window.width*0.06
        anchors.top:parent.top
        anchors.topMargin:window.height*510/600
        anchors.left:parent.left
        anchors.leftMargin:window.width*600/1000
        Image{id:image4
            source:"Images/backward.png"
            height:parent.height
            width:parent.width
            fillMode:Image.PreserveAspectFit}
        MouseArea{anchors.fill:image4}
    }

    Image{
        id:sliderimage
        anchors.top:parent.top
        anchors.topMargin:window.height*390/600
        anchors.left:parent.left
        anchors.leftMargin: window.width*390/1000

        Slider{
            id:slider
            width:window.width*220/1000
            height:window.height*50/1000
            from:0
            to:100
            anchors.top:parent.top
            anchors.topMargin:parent.height*0.35
            anchors.left:parent.left
            anchors.leftMargin:20
            transformOrigin:Item.Center
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




            Text{
                id:lowtext
                anchors.top:slider.bottom
                anchors.left:slider.left
                anchors.topMargin:2
                text:"00.00.00"
                color:"white"
            }

            Text{
                id:hightext
                anchors.top:slider.bottom
                anchors.left:slider.left
                anchors.leftMargin:slider.width
                anchors.topMargin:2
                text:"00.04.00"
                color:"white"

            }


        }}
    Image{

        anchors.top: parent.top
        anchors.topMargin: window.height*150/600
        anchors.left: parent.left
        anchors.leftMargin: window.width*780/1000
        fillMode: Image.PreserveAspectFit
        source: "Images/Music-icon.png"
        height:window.height*15/60
        width:window.width*0.15
    }
    Text{id:text2
        text:"TRACK NAME"
        font.pointSize:25
        font.bold:true
        font.family: "Arial"
        color:"white"
        anchors.top:parent.top
        anchors.topMargin:200
        anchors.left:parent.left
        anchors.leftMargin:parent.width*400/1000
    }




}
