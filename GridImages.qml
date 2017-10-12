import QtQuick 2.0
import QtQuick.Controls 2.2


Item {
    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000
    property int counter1: 1

    height: mainScreenHeight*0.7
    width: mainScreenWidth*0.8
    id: grid
    anchors.top: parent.top
    anchors.topMargin: mainScreenHeight*0.235
    anchors.left: parent.left
    anchors.leftMargin: mainScreenWidth*172/1000


    ListModel {
        id: appModel
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
        cellWidth: grid.width*0.3
        cellHeight: grid.height*0.5
        model: appModel
        clip:true
         delegate: Item
          {
              width: grid.width*0.175
              height: grid.height*0.35


              Image
              {
                  id: myIcon
                  anchors.horizontalCenter: parent.horizontalCenter
                  source: icon
                  width: grid.width*0.125
                  height: grid.height*0.25
                  fillMode: Image.PreserveAspectFit
              }


              Text
              {
                      id:textArea1
                      anchors
                      {   top: myIcon.bottom;
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

                  onPressed:
                  {  myIcon.width=(grid.width*0.125)*3/4
                      myIcon.height=(grid.height*0.25)*3/4


                      if(name=="Others" && appModel.count<=6){

                          appModel.append({name:"Temperature", icon: "Images/thermometer.png"})
                          appModel.move(appModel.count-2,appModel.count-1,1)
                      }

                  }
                  onReleased: {
                      myIcon.width=grid.width*0.125
                       myIcon.height=grid.height*0.25

                  }



                  }
              }

          }



}



