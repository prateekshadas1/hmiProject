#include "LoadScreen.h"
#include <iostream>
#include <QQuickItem>
#include <ListModel.h>
#include <QQmlApplicationEngine>
#include <QQuickWindow>

using namespace std;

<<<<<<< HEAD


=======
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
void LoadScreen::setEngine(QQmlApplicationEngine *engine)
{
    m_engine = engine;
}

<<<<<<< HEAD
=======

>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
void LoadScreen::onReleased(QVariant value)
{
     cout << "releasesd"<<endl;
     value;
<<<<<<< HEAD

=======
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
     ListModel model2;

     mainScreenElements phoneButton;
     phoneButton.name = "Phone";
<<<<<<< HEAD
     phoneButton.icon = "qrc:/Images/phone icon.png";
=======
     phoneButton.icon = "qrc:/Images/phone1.png";
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
     model2.addEntry(phoneButton);

     mainScreenElements radioButton;
     radioButton.name = "Radio";
     radioButton.icon = "qrc:/Images/radio1.png";
     model2.addEntry(radioButton);

     mainScreenElements mediaButton;
     mediaButton.name = "Media";
     mediaButton.icon = "qrc:/Images/media.png";
     model2.addEntry(mediaButton);

     mainScreenElements navigationButton;
     navigationButton.name = "Navigation";
     navigationButton.icon = "qrc:/Images/gps.png";
     model2.addEntry(navigationButton);

     mainScreenElements settingsButton;
     settingsButton.name = "Settings";
     settingsButton.icon = "qrc:/Images/setting icon.png";
     model2.addEntry(settingsButton);

<<<<<<< HEAD
=======
//     mainScreenElements temperatureButton;
//     temperatureButton.name = "Temperature";
//     temperatureButton.icon = "qrc:/Images/thermometer.png";
//     if(addclimatecontrol==true)
//     model2.addEntry(temperatureButton);


>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
     mainScreenElements futureButton;
     futureButton.name = "Future";
     futureButton.icon = "qrc:/Images/plus.png";
     model2.addEntry(futureButton);


     QObject *object = m_engine->rootObjects().at(0);
     QQuickWindow* mainWindow = qobject_cast <QQuickWindow*> (object);

     QQuickItem* gridView = mainWindow->findChild<QQuickItem*>("gridView");
     gridView->setProperty("model", QVariant::fromValue(&model2));
     gridView->update();
<<<<<<< HEAD
}

=======

//     QQuickItem* temperatureButtons = mainWindow->findChild<QQuickItem*>("mainScreen");

//     if(temperatureButtons !=nullptr)
//     {
//         QObject::connect(temperatureButtons,SIGNAL(plus(QVariant)),this,SLOT(onPlusPressed(QVariant)));

//     }


}
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
int LoadScreen::onEntered()
{
    ListModel test;

    if (test.m_index == 0)
    {
         m_engine->load(QUrl(QStringLiteral("qrc:/PhoneScreen.qml")));

    }

    else
    {
        cout << " not loaded " << endl;
    }


    if (m_engine->rootObjects().isEmpty())
        return -1;

}
<<<<<<< HEAD
=======

>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
