import QtQuick 2.0

Item {

    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000

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
    }

}
