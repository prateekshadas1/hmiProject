import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    id: mainScreenIcons
    property int mainScreenHeight : 600
    property int mainScreenWidth : 1000
    property string iconText: "value"
    property url sourceIcon: "Images/media.png"

    height: mainScreenIcons.mainScreenHeight * (133/600)
    width: mainScreenIcons.mainScreenWidth / 6.25

 Image{

    id:imageIcon
    source:mainScreenIcons.sourceIcon
    anchors.fill:mainScreenIcons
    fillMode: Image.PreserveAspectFit
 }

    Text{
        anchors.top:imageIcon.bottom
        anchors.topMargin: mainScreenHeight/60
        anchors.horizontalCenter: imageIcon.horizontalCenter
        width: mainScreenWidth/10
        height: mainScreenHeight/30
        text:mainScreenIcons.iconText;
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment:Text.AlignHCenter
        color:"white"
        font.pixelSize:mainScreenWidth/55
        font.bold:true
    }

}



