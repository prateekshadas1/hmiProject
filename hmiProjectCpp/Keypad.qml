import QtQuick 2.0


    Rectangle
    {

        property string name
        property int keypadHeight
        property int keypadWidth
        id: rect
        height: keypadHeight
        width: keypadWidth
        radius: keypadHeight
        color: "transparent"
        border.color: "steelblue"
        border.width: 1

        Text
        {
                id:textArea1
                anchors.centerIn: parent
              text: name
              color: "white"
              font.pointSize: 14
              font.bold:true
              font.family: "Arial"


         }





    }
