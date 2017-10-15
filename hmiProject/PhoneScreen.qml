import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2



    Item{
        visible: true
        //width: 600
        //height: 600
        id: phonscreen
        //title: qsTr("Phone Menu")

        Image {
            id: phoneScreen
            source: "Images/connected screen.PNG"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }

        Loader{
            id: homescreen

        }
        MouseArea{
            anchors.fill: parent

            onPressed: {
              //  homescreen.setSource("main.qml")
                //phonscreen.visible = false

            }
        }

    }


