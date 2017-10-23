import QtQuick 2.0

Item {

    id: item
   objectName: "PhoneScreenHomeButton"
    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000

signal released(var value)


    Image {
        id: home

        anchors.top: parent.top
        anchors.topMargin: mainScreenHeight*18/600
        anchors.left: parent.left
        anchors.leftMargin: mainScreenWidth*10/1000
        fillMode: Image.PreserveAspectFit

        source: "Images/home icon.png"
        height:mainScreenHeight/6
        width:mainScreenWidth*0.1

        MouseArea
        {
            objectName: item.objectName
            anchors.fill: home

            onPressed:
            {
                home.height=mainScreenHeight/6*(3/4)
                home.width=mainScreenWidth*0.1*(3/4)
            }

            onReleased:
            {
                home.height=mainScreenHeight/6
                home.width=mainScreenWidth*0.1
                item.released("home")
                //rootWindow.changeScreen("MainScreen.qml")
            }
        }
    }

}
