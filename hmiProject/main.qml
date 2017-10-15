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
    //title: qsTr("Main Menu")

    property bool glowLayer: false

    Loader{
        id:loader
    }

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
            anchors.topMargin: 18
            anchors.left:parent.left
            anchors.leftMargin: 10
            fillMode: Image.PreserveAspectFit
            source: "Images/home icon.png"
            height:window.height/6
            width:window.width*0.1
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
        id:borderLine
        width:parent.width
        height:1
        color: "gray"
        anchors.top: parent.top
        anchors.topMargin: window.height*125/600
    }



    Item
    {
        height: window.height* (0.7)
        width: window.width* (0.8)
        id: grid
        anchors.top: parent.top
        anchors.topMargin: window.height*0.235
        anchors.left: parent.left
        anchors.leftMargin: window.width*172/1000

           ListModel
            {
              id: appModel
              objectName: appModel
//              ListElement { name: "Phone"; icon: "Images/phone icon.png"; }
//              ListElement { name: "Radio"; icon: "Images/radio1.png";}
//              ListElement { name: "Media"; icon: "Images/media.png" }
//              ListElement { name: "Navigation";icon: "Images/gps.png" }
//              ListElement { name: "Settings";icon: "Images/setting icon.png"}
//              ListElement { name: "Others"; icon: "Images/plus.png"}
          }

        GridView {
            id:gridView
            width: grid.width
            height: grid.height
            cellWidth: grid.width * (0.3)
            cellHeight: grid.height* (0.5)
            model: appModel
            clip: true
            //flow: GridView.FlowTopToBottom

            delegate:
                Item {
                  id:item1
                  width: grid.width*0.175
                  height: grid.height*0.35

                  Image {
                      Rectangle
                      {
                          id:backgroundRectangle
                          height: grid.height * 0.25+5
                          width: height
                          radius: height/2
                          anchors.horizontalCenter: parent.horizontalCenter
                          color: "transparent"
                          border.color: "white"
                          border.width: 9
                          visible: false
                          layer.enabled: window.glowLayer
                          layer.effect: Glow {
                                               samples: 17
                                               radius: 8
                                               color: "blue"
                                               transparentBorder: false
                                             }
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
                      anchors
                      {
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

                   Loader{
                       id: phoneLoader

                   }

                  MouseArea{
                      anchors.fill:myIcon
                      hoverEnabled: true
                      onEntered: {
                          window.glowLayer = false
                          backgroundRectangle.visible = true
                      }

                      onExited: {
                          window.glowLayer = false
                          backgroundRectangle.visible = false
                      }



                      onPressed: {

                          myIcon.width = myIcon.width * 0.75
                          myIcon.height = myIcon.height * 0.75
                          backgroundRectangle.height =  backgroundRectangle.height * 0.75
                          textArea1.font.pointSize = textArea1.font.pointSize * 0.6

                          if(name == "Others")
                          {

                          appModel.append({name: "Radio", icon: "Images/radio1.png"})
                          appModel.move(appModel.count-2, appModel.count-1, 1)
                          }

                          if(name == "Phone")
                          {
                                phoneLoader.setSource("qrc :/PhoneScreen.qml")
                              //window.visible = false
                          }


                      }

                      onReleased: {
                          myIcon.width = grid.width*0.125
                          myIcon.height = grid.height*0.25
                          textArea1.font.pointSize = grid.width*0.017
                          backgroundRectangle.height = grid.height * 0.25

                          if(name=="Settings"){
                              loader.setSource("SettingsScreen.qml")

                          }
                      }
                  }

              }

        }
            }



}
