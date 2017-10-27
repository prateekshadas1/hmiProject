#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <ListModel.h>
#include <QQuickItem>
#include <QQuickWindow>
#include <QAbstractListModel>
#include <iostream>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <ListModel.h>
#include <QQuickItem>
#include <QQuickWindow>
#include <QAbstractListModel>
#include <iostream>
#include <MainScreen.h>
#include <QQmlContext>
#include <RootWindow.h>
using namespace std;


int main(int argc, char  *argv[])
{
    RootWindow rootWindowObject;

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    rootWindowObject.setHeight(600);
    rootWindowObject.setWidth(1000);

    engine.rootContext()->setContextProperty("rootWindowHeight",rootWindowObject.getHeight());
    engine.rootContext()->setContextProperty("rootWindowWidth",rootWindowObject.getWidth());


    if (engine.rootObjects().isEmpty())
        return -1;

    //Show Main Screen
    MainScreen mainScreen;
    mainScreen.setEngine(&engine);
    mainScreen.show();




 return app.exec();
}
