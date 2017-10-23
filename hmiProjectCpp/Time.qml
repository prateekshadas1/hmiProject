import QtQuick 2.0

Item {
    property int mainScreenHeight: 600
    property int mainScreenWidth: 1000

    width: mainScreenWidth*0.08
    height: mainScreenHeight*0.13
    Text {
        id:time
        anchors.centerIn: parent

        color:"white"
        font.bold:true
        font.pixelSize: mainScreenWidth*28/1000
      }
    Timer{
        interval: 500
        running:true
        repeat:true

        onTriggered: {
            var date=new Date()
            time.text=date.toLocaleTimeString(Qt.locale("en_US"),"hh:mm")
        }
    }

}
