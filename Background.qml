import QtQuick 2.0

Item {
    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000
    Image
    {
        source:"Images/backgroud screen1.jpg"
       // fillMode: Image.PreserveAspectFit
        height:mainScreenHeight
        width: mainScreenWidth
    }

}
