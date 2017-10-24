import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Item {
    id:phoneScreen
    visible: true
<<<<<<< HEAD
    width: rootWindow.screenWidth
    height: rootWindow.screenHeight
=======
    width: parent.width
    height: parent.height
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab

    Background
       {
           mainScreenHeight: phoneScreen.height
           mainScreenWidth: phoneScreen.width
       }


       HomeButton
       {
           id: home
           mainScreenHeight: phoneScreen.height
           mainScreenWidth: phoneScreen.width
       }

       Image{
           id:phoneIcon
<<<<<<< HEAD
           source:"Images/phone icon.png"
           width: parent.width*0.1
           height: parent.height/8.5
           anchors.top: parent.top
           anchors.topMargin: parent.height*25/600
           anchors.left: parent.left
           anchors.leftMargin:parent.width*120/1000
=======
           source:"Images/phone1.png"
           width: phoneScreen.width*0.1
           height: phoneScreen.height/8.5
           anchors.top: phoneScreen.top
           anchors.topMargin: phoneScreen.height*25/600
           anchors.left: phoneScreen.left
           anchors.leftMargin:phoneScreen.width*120/1000
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
           fillMode: Image.PreserveAspectFit

           MouseArea{
               anchors.fill: phoneIcon
               onPressed: {
<<<<<<< HEAD
                   phoneIcon.height = phoneIcon.height * 0.75
                   phoneIcon.width = phoneIcon.weight * 0.75
               }
               onReleased: {
                   phoneIcon.height = parent.height/8.5
                   phoneIcon.width = parent.width*0.1
                   rootWindow.changeScreen("PhoneScreen.qml")
=======
//                   phoneIcon.height = phoneIcon.height * 0.75
//                   phoneIcon.width = phoneIcon.weight * 0.75
               }
               onReleased: {
//                   phoneIcon.height = phoneIcon.height/6
//                   phoneIcon.width = phoneIcon.width*0.1
//                   rootWindow.changeScreen("PhoneScreen.qml")
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
               }
           }

       }
       Text{
           id:phoneHeader
           text:"PHONE     >    CONTACTS"
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
           mainScreenWidth: parent.width
           mainScreenHeight: parent.height
       }

       Rectangle
       {
           id:horizontalLine
           width:parent.width
           height:1
           color: "gray"
           anchors.top: parent.top
           anchors.topMargin: phoneScreen.height*120/600
       }
       Rectangle
       {
           id:verticalLine
           width:1
           height:parent.height
           color: "gray"
           anchors.top: parent.top
           anchors.left:parent.left
           anchors.leftMargin: phoneScreen.width*110/1000
       }


       Item {
//           property int mainScreenHeight: 600
//           property int mainScreenWidth: 1000
//           property int counter1: 1

           height: phoneScreen.height*0.7
           width: phoneScreen.width*0.8
           id: grid
           anchors.top: parent.top
           anchors.topMargin: phoneScreen.height*0.235
           anchors.left: parent.left
           anchors.leftMargin: phoneScreen.width*172/1000


       Flickable{
           id:flickable
           anchors.fill:parent
           contentHeight:grid.height
           contentWidth:grid.width
       //    topMargin: mainScreenHeight*0.235

       //    contentX:mainScreenWidth*172/1000
       //    contentY: mainScreenHeight*0.235
           ListModel {
               id: appModel
               dynamicRoles: false
               ListElement { name: "Alekhya" }
                 ListElement { name: "Sambha"}
                 ListElement { name: "Shravan"}
                 ListElement { name: "Yash"}
                 ListElement { name: "Harshal"}
                 ListElement { name: "Prateeksha"}
                 ListElement { name: "Pranali" }
                   ListElement { name: "Surya"}
                   ListElement { name: "Navya"}
                   ListElement { name: "Aditya"}
                   ListElement { name: "Ali"}
                   ListElement { name: "Sarthak"}
                   ListElement { name: "Phone" }
                     ListElement { name: "Radio"}
                     ListElement { name: "Media"}
                     ListElement { name: "Navigation"}
                     ListElement { name: "Settings"}
                     ListElement { name: "Others"}
             }


           ListView {
               width: grid.width
               height: grid.height
               model: appModel
              // snapMode:GridView.SnapOneRow
                 delegate: Item
                 {
                     width: grid.width*0.6
                     height: grid.height*0.06


                     Rectangle
                     {
                         id: myIcon
                         anchors.horizontalCenter: parent.horizontalCenter
                         //source: icon
                         width: grid.width*0.6
                         height: grid.height*0.06
                         color: "lightgreen"
                         border.width: 1
                         border.color: "black"
                         //fillMode: Image.PreserveAspectFit
                     }


                     Text
                     {
                             id:textArea1
                            anchors.horizontalCenter: myIcon.horizontalCenter
                            //anchors.verticalCenter: myIcon.verticalCenter
                           text: name
                           color: "white"
                           font.pixelSize: grid.width*0.02
                           font.bold:true
                           font.family: "Arial"


                     }
                     MouseArea{
                         anchors.fill:myIcon

                         onPressed:
                         {  myIcon.width=(grid.width*0.6)*3/4
                             myIcon.height=(grid.height*0.06)*3/4
                             textArea1.font.pixelSize = textArea1.font.pixelSize * 0.75



                         }
                         onReleased: {
                             myIcon.width=grid.width*0.6
                              myIcon.height=grid.height*0.06
                             textArea1.font.pixelSize = grid.width*0.02

                         }



                         }
                     }

                 }



       }
       }


}
