#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <ListModel.h>
#include <QQuickItem>
#include <QQuickWindow>
#include <QAbstractListModel>
#include <iostream>
#include <LoadScreen.h>
#include <ScreenTransitions.h>
#include <MainScreen.h>


using namespace std;


int main(int argc, char  *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    //Show Main Screen
    MainScreen mainScreen;
    mainScreen.setEngine(&engine);
    mainScreen.show();




 return app.exec();
}
