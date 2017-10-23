import QtQuick 2.8
import QtQuick.Controls 2.2
import QtQuick.Window 2.2


Item
 {
     property int screenWidth
     property int screenHeight

     id: rootWindow
     visible: true
     width: 1000
     height: 600
     screenWidth: rootWindow.width
     screenHeight:rootWindow.height
    objectName: "mainScreen"



    Image{
        anchors.fill:parent
        source:"Images/backgroud screen1.jpg"
        }

    Image {

        id: home
        anchors.top:parent.top
        anchors.topMargin: 18
        anchors.left:parent.left
        anchors.leftMargin: 10
        fillMode: Image.PreserveAspectFit
        source: "Images/home icon.png"
        height:rootWindow.height/6
        width:rootWindow.width*0.1
        }

    MouseArea{
        id: homeButton


        anchors.fill: home
        onPressed: {
            home.height = home.height * 0.75
            home.width = home.width * 0.75
            }
        onReleased: {
            home.height = rootWindow.height/6
            home.width = rootWindow.width*0.1

            }
        }

    Item {
        anchors.right:parent.right
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 16
        width: rootWindow.width*0.08
        height: rootWindow.height*0.13

        Text{
            id:time
            anchors.centerIn: parent
            color:"white"
            font.bold:true
            font.pixelSize: rootWindow.width*28/1000
            }

        Timer{
            interval: 500
            running:true
            repeat:true
            onTriggered:{
                var date=new Date()
                time.text=date.toLocaleTimeString(Qt.locale("en_US"),"hh:mm")
                }
            }
        }

    Rectangle{
        id:borderLine
        objectName: "borderLine"
        width:parent.width
        height:1
        color: "gray"
        anchors.top: parent.top
        anchors.topMargin: rootWindow.height*125/600
        }

    Item{
        height: rootWindow.height* (0.7)
        width: rootWindow.width* (0.8)
        id: grid
        anchors.top: parent.top
        anchors.topMargin: rootWindow.height*0.235
        anchors.left: parent.left
        anchors.leftMargin: rootWindow.width*172/1000

        ListModel{
            id: appModel
            objectName: "appModel"
            }

        GridView {
            id:gridView
            objectName: "gridView"
            width: grid.width
            height: grid.height
            cellWidth: grid.width * (0.3)
            cellHeight: grid.height* (0.5)
            model: appModel
            clip: true
               signal released(int index)

            delegate:
                Item {
                id:item1
                width: grid.width*0.175
                height: grid.height*0.35

                Image {
                    Rectangle{
                        id:backgroundRectangle
                        height: grid.height * 0.25+5
                        width: height
                        radius: height/2
                        anchors.horizontalCenter: parent.horizontalCenter
                        color: "transparent"
                        border.color: "white"
                        border.width: 9
                        visible: false
                        }

                    id: myIcon
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: icon
                    width: grid.width*0.125
                    height: grid.height*0.25
                    fillMode: Image.PreserveAspectFit
                    }

                Text {
                    id:textArea1
                    objectName: "textArea1"
                    anchors{
                        top: myIcon.bottom;
                        topMargin: parent.height* 15/600
                        horizontalCenter: myIcon.horizontalCenter
                        }
                    text: name
                    color: "white"
                    font.pointSize: grid.width*0.017
                    font.bold:true
                    font.family: "Arial"
                    }

                MouseArea{
                    id: gridMouse
                    objectName: gridView.objectName
                    anchors.fill:myIcon
                    hoverEnabled: true

                    onEntered: {
                        backgroundRectangle.visible = true
                        }

                    onExited: {
                        backgroundRectangle.visible = false
                        }

                    onPressed: {
                        myIcon.width = myIcon.width * 0.75
                        myIcon.height = myIcon.height * 0.75
                        backgroundRectangle.height =  backgroundRectangle.height * 0.75
                        textArea1.font.pointSize = textArea1.font.pointSize * 0.6
                        }

                    onReleased: {
                        myIcon.width = grid.width*0.125
                        myIcon.height = grid.height*0.25
                        textArea1.font.pointSize = grid.width*0.017
                        backgroundRectangle.height = grid.height * 0.25
                        console.log("index from qml" + index)
                        gridView.released(index)
                      }


                    }
                }
            }

        }

    }






