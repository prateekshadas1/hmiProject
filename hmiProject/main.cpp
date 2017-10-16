#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <ListModel.h>
#include <QQuickItem>
#include <QQuickWindow>
#include <QAbstractListModel>
#include <iostream>

using namespace std;


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    ListModel model;

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

    mainScreenElements navigationButton1;
    navigationButton1.name = "Navigation";
    navigationButton1.icon = "qrc:/Images/gps.png";
    model.addEntry(navigationButton1);

    mainScreenElements settingsButton1;
    settingsButton1.name = "Settings";
    settingsButton1.icon = "qrc:/Images/setting icon.png";
    model.addEntry(settingsButton1);

    mainScreenElements futureButton1;
    futureButton1.name = "Future";
    futureButton1.icon = "qrc:/Images/plus.png";
    model.addEntry(futureButton1);

    QObject *object = engine.rootObjects().at(0);
    QQuickWindow* mainWindow = qobject_cast <QQuickWindow*> (object);

    QQuickItem* gridView = mainWindow->findChild<QQuickItem*>("gridView");
    gridView->setProperty("model", QVariant::fromValue(&model));

    return app.exec();
}
