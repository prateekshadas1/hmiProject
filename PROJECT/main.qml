import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.0

Window {
    id:root
    visible: true
    width: 1000
    height: 600
    title: qsTr("Main Screen")


    Image
    {
        anchors.fill:parent
        source:"Images/backgroud screen1.jpg"
    }


    Item {
        id: home
        height:root.height/6
        width:root.width/10
        anchors.left:root.left
        anchors.leftMargin: root.width/100
        anchors.top:root.top
        anchors.topMargin: root.height/60

    Image
    {
        id: homeIcon
        anchors.fill: home
        fillMode: Image.PreserveAspectFit
        source: "Images/home icon.png"

        }
    }

    Rectangle
    {
        id:rectTime
        anchors.right:parent.right
        anchors.rightMargin: root.width/50
        anchors.top: parent.top
        anchors.topMargin: root.height/40
        color:"transparent"
        width: root.width/12.5
        height: root.height/7.5
    Text
    {
       id:time
       anchors.centerIn: parent
       color:"white"
       font.bold:true
       font.pixelSize: root.width * (7/250)
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


    Rectangle
    {
        id:border1
        width:parent.width
        height:1
        color: "gray"
        anchors.top: parent.top
        anchors.topMargin: root.height/6
    }


  Grid
  {
      id:grid
      width: parent.width/1.25
      height: parent.height/1.5
      anchors.left:parent.left
      anchors.leftMargin: parent.width/10
      anchors.top:border1.bottom
      anchors.topMargin: parent.height/12
      rows:2
      columns: 3
      rowSpacing: parent.height * (2/15)
      columnSpacing: parent.width * (4/25)



      MainButtons
      {
          id: phoneIcon
          mainScreenHeight: root.height
          mainScreenWidth: root.width
          sourceIcon: "Images/phone icon.png"
          iconText: "Phone"
      }

      MainButtons
      {
          mainScreenHeight: root.height
          mainScreenWidth: root.width
          sourceIcon: "Images/radio icon4.png"
          iconText: "Phone"
      }

      MainButtons
      {
          mainScreenHeight: root.height
          mainScreenWidth: root.width
          sourceIcon: "Images/media.png"
          iconText: "Media"
      }

      MainButtons
      {
          mainScreenHeight: root.height
          mainScreenWidth: root.width
          sourceIcon: "Images/gps.png"
          iconText: "Navigation"
      }

      MainButtons
      {
          mainScreenHeight: root.height
          mainScreenWidth: root.width
          sourceIcon: "Images/setting icon.png"
          iconText: "Settings"
      }

      MainButtons
      {
          mainScreenHeight: root.height
          mainScreenWidth: root.width
          sourceIcon: "Images/plus.png"
          iconText: "Future"
      }

}


}



