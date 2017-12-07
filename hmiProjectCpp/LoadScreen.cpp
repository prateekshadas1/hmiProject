#include "LoadScreen.h"
#include <iostream>
#include <QQuickItem>
#include <ListModel.h>
#include <QQmlApplicationEngine>
#include <QQuickWindow>

using namespace std;



void LoadScreen::setEngine(QQmlApplicationEngine *engine)
{
    m_engine = engine;
}

void LoadScreen::onReleased(QVariant value)
{
     cout << "releasesd"<<endl;
     value;

     ListModel model2;

     mainScreenElements phoneButton;
     phoneButton.name = "Phone";
     phoneButton.icon = "qrc:/Images/phone icon.png";
     //model2.addEntry(phoneButton);

     mainScreenElements radioButton;
     radioButton.name = "Radio";
     radioButton.icon = "qrc:/Images/radio1.png";
     //model2.addEntry(radioButton);

     mainScreenElements mediaButton;
     mediaButton.name = "Media";
     mediaButton.icon = "qrc:/Images/media.png";
     //model2.addEntry(mediaButton);

     mainScreenElements navigationButton;
     navigationButton.name = "Navigation";
     navigationButton.icon = "qrc:/Images/gps.png";
     //model2.addEntry(navigationButton);

     mainScreenElements settingsButton;
     settingsButton.name = "Settings";
     settingsButton.icon = "qrc:/Images/setting icon.png";
     //model2.addEntry(settingsButton);

     mainScreenElements futureButton;
     futureButton.name = "Future";
     futureButton.icon = "qrc:/Images/plus.png";
     //model2.addEntry(futureButton);


     QObject *object = m_engine->rootObjects().at(0);
     QQuickWindow* mainWindow = qobject_cast <QQuickWindow*> (object);

     QQuickItem* gridView = mainWindow->findChild<QQuickItem*>("gridView");
     gridView->setProperty("model", QVariant::fromValue(&model2));
     gridView->update();
}


