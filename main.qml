import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1


Window {
    visible: true
    width: 1000
    height: 600
    id: window
    title: qsTr("Main Menu")
    Image{
        anchors.fill:parent

        source:"Images/backgroud screen1.jpg"
    }
    Item{
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
    Text {
        id:time
       anchors.centerIn: parent

        color:"white"
       font.bold:true
       font.pixelSize: window.width*28/1000
      }
    Timer{
        interval: 500
        running:true
        repeat:true

        onTriggered: {
            var date=new Date()
            time.text=date.toLocaleTimeString(Qt.locale("en_US"),"hh:mm")
        }
    }
    }


Rectangle{
    id:borderLine
    width:parent.width
    height:1
    color: "gray"
    anchors.top: parent.top
    anchors.topMargin: window.height*125/600
}
Item{
    height: window.height*0.7
    width: window.width*0.8
    id: grid
    anchors.top: parent.top
    anchors.topMargin: window.height*0.235
    anchors.left: parent.left
    anchors.leftMargin: window.width*172/1000



    ListModel {
        id: appModel
        dynamicRoles: false
        ListElement { name: "Phone"; icon: "Images/phone1.png"; }
          ListElement { name: "Radio"; icon: "Images/radio1.png";}
          ListElement { name: "Media"; icon: "Images/media.png" }
          ListElement { name: "Navigation";icon: "Images/gps.png" }
          ListElement { name: "Settings";icon: "Images/setting icon.png"}
          ListElement { name: "Others"; icon: "Images/plus.png"}
      }


    GridView {
        width: grid.width
        height: grid.height



          cellWidth: grid.width*0.3; cellHeight: grid.height*0.5


          model: appModel



          delegate: Item {

              width: grid.width*0.175; height: grid.height*0.35


              Image {
                  id: myIcon
                  y: 50
                  anchors.horizontalCenter: parent.horizontalCenter
                  source: icon
                  width: grid.width*0.125
                  height: grid.height*0.25
                  fillMode: Image.PreserveAspectFit
              }


              Text {
                  id:textArea1
                  anchors { top: myIcon.bottom;
                      topMargin: 15
                      horizontalCenter: parent.horizontalCenter
                  }
                  text: name
                  color: "white"
                  font.pointSize: grid.width*0.02
                  font.bold:true
                  font.family: "Arial"


              }
              MouseArea{
                  anchors.fill:myIcon
                  onClicked: {

                  }
              }

          }




    }
}
}
