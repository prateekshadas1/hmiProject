import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.4

Window {
    visible: true
    width: 1000
    height: 600
    id: window
    title: qsTr("Radio Settings")

    Loader{
        id: loader
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
            anchors.topMargin: window.height *18/600
            anchors.left:parent.left
            anchors.leftMargin: window.width * 10/1000
            fillMode: Image.PreserveAspectFit
            source: "Images/home icon.png"
            height:window.height/6
            width:window.width*0.1

            MouseArea{
                anchors.fill: home
                onPressed: {
                    home.height = home.height * 0.75
                    home.width = home.weight * 0.75
                }
                onReleased: {
                    home.height = window.height/6
                    home.width = window.width*0.1
                    loader.setSource ("main.qml")
                    window.visible = false
                }
            }
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
        anchors.left: parent.left
        anchors.leftMargin:  window.width * 110/1000
    }

    Image{
            id:settingsIcon
            source:"Images/setting icon.png"
            width:window.width*0.1
            height:window.height/8.5
            anchors.top: parent.top
            anchors.topMargin: window.height * 25/600
            anchors.left: parent.left
            anchors.leftMargin:window.width *120/1000
            fillMode: Image.PreserveAspectFit

            MouseArea{
                anchors.fill: settingsIcon
                onPressed: {
                    settingsIcon.height = settingsIcon.height * 0.75
                    settingsIcon.width = settingsIcon.weight * 0.75
                }
                onReleased: {
                    settingsIcon.height = window.height/6
                    settingsIcon.width = window.width*0.1
                }
            }

        }
        Text{
            id:headingSettings
            text:"SETTINGS  >  RADIO"
            font.bold: true
            font.family: "Arial"
            font.pointSize: window.width * 18/1000
            color: "white"
            anchors.left:settingsIcon.right
            anchors.leftMargin: 10
            anchors.top:parent.top
            anchors.topMargin: window.height * 45/600
        }

//----TA----//
        Rectangle{
            id: taRect
            //anchors.fill: radioButton
            height: window.height * 75/600
            width: window.width*  400/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 45/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: taRect.verticalCenter
                anchors.horizontalCenter: taRect.horizontalCenter
                color: "white"
                text: "Traffic Announcements"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        Rectangle{
            id: onRect
            height: window.height * 75/600
            width: window.width*  50/1000
            anchors.left: taRect.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 45/600
            color: "transparent"
            Text{
                anchors.centerIn: onRect
                color: "white"
                text: "On"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }

        }

        RadioButton{
            id: onButton
            anchors.left: onRect.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.verticalCenter: onRect.verticalCenter


            indicator: Rectangle {
                      width: window.width * 32/1000
                      height: width
                     x: onButton.leftPadding
                     y: parent.height / 2 - height / 2
                      radius: width/2
                      color: "transparent"
                      border.width: 2
                      border.color: "white"

                      Rectangle {
                          width: window.width * 14/1000
                          height: width
                          anchors.centerIn: parent
                          radius: width/2
                          color: onButton.down ? "transparent" : "blue"
                          visible: onButton.checked
                      }
                  }

       }

        Rectangle{
            id: offRect
            height: window.height * 75/600
            width: window.width*  50/1000
            anchors.left: onButton.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 45/600
            color: "transparent"
            Text{
                anchors.centerIn: offRect
                color: "white"
                text: "Off"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }

        }

        RadioButton{
            id: offButton
            anchors.left: offRect.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.verticalCenter: offRect.verticalCenter


            indicator: Rectangle {
                      width: window.width * 32/1000
                      height: width
                     x: offButton.leftPadding
                     y: parent.height / 2 - height / 2
                      radius: width/2
                      color: "transparent"
                      border.width: 2
                      border.color: "white"

                      Rectangle {
                          width: window.width * 14/1000
                          height: width
                          anchors.centerIn: parent
                          radius: width/2
                          color: offButton.down ? "transparent" : "blue"
                          visible: offButton.checked
                      }
                  }

       }




//----TP---//

        Rectangle{
            id: tpRect
            height: window.height * 75/600
            width: window.width*  400/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 140/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: tpRect.verticalCenter
                anchors.horizontalCenter: tpRect.horizontalCenter
                color: "white"
                text: "TP"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        Slider{
            id:slider
            width:window.width *300/1000
            height:window.height * 10/600
            from:0
            to:100
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 140/600
            anchors.left: tpRect.right
            anchors.leftMargin: window.width*  50/1000
            anchors.verticalCenter: tpRect.verticalCenter
            transformOrigin: Item.Center

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

            Rectangle{
                id:lowtext
               anchors.top:window.top
               anchors.left:slider.left
               anchors.topMargin: window.height * 310/600
               height: window.height * 20/1000
               width: window.width * 20/600
               color: "transparent"

               Text{
                anchors.centerIn: lowtext
                font.bold: true
                text:"0"
                color:"white"
                font.pixelSize: window.width * 18/1000
                }

            }

            }
         Text{
             anchors.left:slider.right
             anchors.top:slider.bottom
             anchors.topMargin: window.height * 5/1000
             text: "100"
             color: "white"
             font.pixelSize: window.width * 18/1000

         }

//---Radio Text---//

        Rectangle{
            id: radioTextRect
            height: window.height * 75/600
            width: window.width*  400/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 235/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: radioTextRect.verticalCenter
                anchors.horizontalCenter: radioTextRect.horizontalCenter
                color: "white"
                text: "Radio Text"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }

           }

        Rectangle{
            id: onRect2
            height: window.height * 75/600
            width: window.width*  50/1000
            anchors.left: radioTextRect.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 235/600
            color: "transparent"
            Text{
                anchors.centerIn: onRect2
                color: "white"
                text: "On"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }

        }

        RadioButton{
            id: onButton2
            anchors.left: onRect2.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.verticalCenter: onRect2.verticalCenter


            indicator: Rectangle {
                      width: window.width * 32/1000
                      height: width
                     x: onButton2.leftPadding
                     y: parent.height / 2 - height / 2
                      radius: width/2
                      color: "transparent"
                      border.width: 2
                      border.color: "white"

                      Rectangle {
                          width: window.width * 14/1000
                          height: width
                          anchors.centerIn: parent
                          radius: width/2
                          color: onButton2.down ? "transparent" : "blue"
                          visible: onButton2.checked
                      }
                  }

       }

        Rectangle{
            id: offRect2
            height: window.height * 75/600
            width: window.width*  50/1000
            anchors.left: onButton2.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 235/600
            color: "transparent"
            Text{
                anchors.centerIn: offRect2
                color: "white"
                text: "Off"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }

        }



        RadioButton{
            id: offButton2
            anchors.left: offRect2.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.verticalCenter: offRect2.verticalCenter


            indicator: Rectangle {
                      width: window.width * 32/1000
                      height: width
                     x: offButton2.leftPadding
                     y: parent.height / 2 - height / 2
                      radius: width/2
                      color: "transparent"
                      border.width: 2
                      border.color: "white"

                      Rectangle {
                          width: window.width * 14/1000
                          height: width
                          anchors.centerIn: parent
                          radius: width/2
                          color: offButton2.down ? "transparent" : "blue"
                          visible: offButton2.checked
                      }
                  }


        }




//---Reginal Stations---//

        Rectangle{
            id: stationsRect
            height: window.height * 75/600
            width: window.width*  400/1000
            anchors.left: verticalLine.right
            anchors.leftMargin: window.width * 45/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 330/600
            color: "transparent"
            border.color: "white"
            border.width: 1
            Text{
                anchors.verticalCenter: stationsRect.verticalCenter
                anchors.horizontalCenter: stationsRect.horizontalCenter
                color: "white"
                text: "Regional Stations"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }
        }

        Rectangle{
            id: onRect3
            height: window.height * 75/600
            width: window.width*  50/1000
            anchors.left: stationsRect.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 330/600
            color: "transparent"
            Text{
                anchors.centerIn: onRect3
                color: "white"
                text: "On"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }

        }

        RadioButton{
            id: onButton3
            anchors.left: onRect3.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.verticalCenter: onRect3.verticalCenter


            indicator: Rectangle {
                      width: window.width * 32/1000
                      height: width
                     x: onButton3.leftPadding
                     y: parent.height / 2 - height / 2
                      radius: width/2
                      color: "transparent"
                      border.width: 2
                      border.color: "white"

                      Rectangle {
                          width: window.width * 14/1000
                          height: width
                          anchors.centerIn: parent
                          radius: width/2
                          color: onButton3.down ? "transparent" : "blue"
                          visible: onButton3.checked
                      }
                  }

       }

        Rectangle{
            id: offRect3
            height: window.height * 75/600
            width: window.width*  50/1000
            anchors.left: onButton2.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.topMargin: window.height * 330/600
            color: "transparent"
            Text{
                anchors.centerIn: offRect3
                color: "white"
                text: "Off"
                font.bold: true
                font.pixelSize: window.width * 30/1000
            }

        }



        RadioButton{
            id: offButton3
            anchors.left: offRect3.right
            anchors.leftMargin: window.width*  50/1000
            anchors.top: horizontalLine.bottom
            anchors.verticalCenter: offRect3.verticalCenter


            indicator: Rectangle {
                      width: window.width * 32/1000
                      height: width
                     x: offButton3.leftPadding
                     y: parent.height / 2 - height / 2
                      radius: width/2
                      color: "transparent"
                      border.width: 2
                      border.color: "white"

                      Rectangle {
                          width: window.width * 14/1000
                          height: width
                          anchors.centerIn: parent
                          radius: width/2
                          color: offButton3.down ? "transparent" : "blue"
                          visible: offButton3.checked
                      }
                  }


        }
}

