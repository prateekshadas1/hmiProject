import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4



Window {
    visible: true
    width: 1000
    height: 600
    title: qsTr("Hello World")
    Image{
        anchors.fill:parent
        source: "backgroud screen1.jpg"

    }

    //property int value:20



        ProgressBar {
            anchors.centerIn: parent
            id:pb1
            minimumValue: 0
            maximumValue: 100


            Slider{
                id:slider
                width:200
                height:10

                anchors.top:pb1.bottom
                anchors.topMargin: 100

                transformOrigin: Item.Center
                tickmarksEnabled : true
                Text{
                 id:lowtext
                anchors.top:slider.bottom
                anchors.left:slider.left
                anchors.topMargin: 10
                text:textAdd.text
                color:"white"
                }

                Text{
                    id:hightext
                   anchors.top:slider.bottom
                   anchors.left:slider.right
                   anchors.topMargin: 10
                   text:textAdd.anothertext
                   color:"white"

                }

                minimumValue: 0
                maximumValue: 100


                   Text{
                        id:notify
                    x:220
                    y:-27
                    anchors.left:slider.right
                    anchors.leftMargin: 20
                    color:"white"
                    //text: slider.value
                    //text: chnge.value
                    //text: chnge.text
                    //text: "<b>" + slider.value.toFixed(0) + "</b>"
                   // text: slider.value.toFixed(0)





                }
                }


            }

        }




