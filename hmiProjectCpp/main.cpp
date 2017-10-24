<<<<<<< HEAD
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <ListModel.h>
#include <QQuickItem>
#include <QQuickWindow>
#include <QAbstractListModel>
#include <iostream>
#include <LoadScreen.h>
#include <ScreenTransitions.h>


using namespace std;


int main(int argc, char  *argv[])
{


    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/MainScreen.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    ListModel model;

    LoadScreen loadScreen;
    loadScreen.setEngine(&engine);

    ScreenTransitions screenTransitions;

    mainScreenElements phoneButton;
    phoneButton.name = "Phone";
    phoneButton.icon = "qrc:/Images/phone icon.png";
    model.addEntry(phoneButton);

    mainScreenElements radioButton;
    radioButton.name = "Radio";
    radioButton.icon = "qrc:/Images/radio1.png";
    model.addEntry(radioButton);

    mainScreenElements mediaButton;
    mediaButton.name = "Media";
    mediaButton.icon = "qrc:/Images/media.png";
    model.addEntry(mediaButton);

    mainScreenElements navigationButton;
    navigationButton.name = "Navigation";
    navigationButton.icon = "qrc:/Images/gps.png";
    model.addEntry(navigationButton);

    mainScreenElements settingsButton;
    settingsButton.name = "Settings";
    settingsButton.icon = "qrc:/Images/setting icon.png";
    model.addEntry(settingsButton);

    mainScreenElements futureButton;
    futureButton.name = "Future";
    futureButton.icon = "qrc:/Images/plus.png";
    model.addEntry(futureButton);

    QObject *object = engine.rootObjects().at(0);
    QQuickWindow* mainWindow = qobject_cast <QQuickWindow*> (object);


    QQuickItem* gridView = mainWindow->findChild<QQuickItem*>("gridView");
    gridView->setProperty("model", QVariant::fromValue(&model));


    if (gridView!=nullptr)
    {
        QObject::connect(gridView, SIGNAL(released(int)), &screenTransitions, SLOT(onReleased(int)));

    }
    else
    {
         cout << "grid mouse not found "<<endl;
    }


    screenTransitions.setWindow(mainWindow);
    screenTransitions.setEngine(&engine);


    QQuickItem* homeButton = mainWindow->findChild<QQuickItem*>("refresh");

    if (homeButton != nullptr)
    {
        QObject::connect(homeButton, SIGNAL(refresh(QVariant)), &loadScreen, SLOT(onReleased(QVariant)));

    }

   else
    {
        cout << "button not found "<<endl;
    }


 return app.exec();
=======
 #include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <iostream>
#include <ListModel.h>
#include <QQuickItem>
#include <QAbstractListModel>
#include <LoadScreen.h>
#include <MainMenu.h>
#include <QQmlComponent>
#include <ScreenTransitions.h>

using namespace std;

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);


    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;



    ListModel model;


    ScreenTransitions screenTransitions;



       QObject* object = engine.rootObjects().at(0);
       QQuickWindow* mainWindow = qobject_cast<QQuickWindow*>(object);
       model.setEngine(&engine);
       model.setWindow(mainWindow);
       model.gridElements();




       screenTransitions.setWindow(mainWindow);
       screenTransitions.setEngine(&engine);











       return app.exec();
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
}
