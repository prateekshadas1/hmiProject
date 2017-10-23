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
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;


    ListModel model;
    model.setEngine(&engine);
    model.gridElements();

    ScreenTransitions screenTransitions;
    screenTransitions.setEngine(&engine);

 return app.exec();
}
