import QtQuick 2.0

Item {
    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000
    height: mainScreenHeight*0.7
    width: mainScreenWidth*0.8
    id: grid
    anchors.top: parent.top
    anchors.topMargin: mainScreenHeight*0.235
    anchors.left: parent.left
    anchors.leftMargin: mainScreenWidth*172/1000



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
                  //y: 50
                  anchors.horizontalCenter: parent.horizontalCenter
                  source: icon
                  width: grid.width*0.125
                  height: grid.height*0.25
                  fillMode: Image.PreserveAspectFit
              }


              Text {
                  id:textArea1
                  anchors { top: myIcon.bottom;
                      topMargin: parent.height*15/600
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
