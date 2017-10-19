#include "LoadScreen.h"
#include <iostream>
#include <QQuickItem>
#include <ListModel.h>
#include <QQmlApplicationEngine>
#include <QQuickWindow>

using namespace std;

//LoadScreen::LoadScreen(QObject *parent) : QObject(parent)
//{
//}

void LoadScreen::setModel(QQuickItem* model)
{
    m_model = model;
}

void LoadScreen::setMainWindow(QQmlApplicationEngine *window)
{
    engine = window;
}

void LoadScreen::onReleased(QVariant value)
{
     cout << "releasesd"<<endl;
     value;
     ListModel model2;

     mainScreenElements test;
     test.name = "radio";
     test.icon = "qrc:/Images/plus.png";
     model2.addEntry(test);

     QObject *object = engine->rootObjects().at(0);
     QQuickWindow* mainWindow = qobject_cast <QQuickWindow*> (object);

     QQuickItem* gridView = mainWindow->findChild<QQuickItem*>("gridView");
     gridView->setProperty("model", QVariant::fromValue(&model2));
     gridView->update();
}
