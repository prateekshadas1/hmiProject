#include "RefreshMainScreen.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <Listmodel.h>
#include <QQuickItem>
#include <QQuickWindow>
#include <QAbstractListmodel>
#include <iostream>
#include <QObject>

using namespace std;

RefreshMainScreen::RefreshMainScreen()
{

}

void RefreshMainScreen::onRefreshScreen(int value)
{

   cout << "starting on refresh "<< value << endl;

//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));


//    ListModel model2;

//    mainScreenElements phoneButton2;
//    phoneButton2.name = "Phone";
//    phoneButton2.icon = "qrc:/Images/phone icon.png";
//    model2.addEntry(phoneButton2);

//    mainScreenElements radioButton2;
//    radioButton2.name = "Radio";
//    radioButton2.icon = "qrc:/Images/radio1.png";
//    model2.addEntry(radioButton2);

//    mainScreenElements mediaButton2;
//    mediaButton2.name = "Media";
//    mediaButton2.icon = "qrc:/Images/media.png";
//    model2.addEntry(mediaButton2);

//    mainScreenElements navigationButton2;
//    navigationButton2.name = "Navigation";
//    navigationButton2.icon = "qrc:/Images/gps.png";
//    model2.addEntry(navigationButton2);

//    mainScreenElements settingsButton2;
//    settingsButton2.name = "Settings";
//    settingsButton2.icon = "qrc:/Images/setting icon.png";
//    model2.addEntry(settingsButton2);

//    mainScreenElements futureButton2;
//    futureButton2.name = "Future";
//    futureButton2.icon = "qrc:/Images/plus.png";
//    model2.addEntry(futureButton2);

//    QObject *object = engine.rootObjects().at(0);
//    QQuickWindow* mainWindow = qobject_cast <QQuickWindow*> (object);

//    QQuickItem* gridView = mainWindow->findChild<QQuickItem*>("gridView");
//    gridView->setProperty("model", QVariant::fromValue(&model2));

//    cout << "RefreshMainScreen.cpp"<<endl;
}
