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
}
