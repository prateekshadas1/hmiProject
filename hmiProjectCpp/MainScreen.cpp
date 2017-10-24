#include "MainScreen.h"
#include <QQmlComponent>
#include <QQuickItem>
#include <ListModel.h>
#include <iostream>


MainScreen::MainScreen(QObject *parent) : QObject(parent)
{
    phoneScreen = new PhoneScreen();
}


void MainScreen::show()
{
    QQmlComponent* MainScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/MainScreen.qml"));
    QQuickItem* MainScreenRootItem = qobject_cast <QQuickItem*> (MainScreenComponent->create());
    MainScreenRootItem->setParentItem(m_window->contentItem());

    ListModel model;
    model.gridElements();
    QQuickItem* gridView = MainScreenRootItem->findChild<QQuickItem*>("gridView");
    gridView->setProperty("model", QVariant::fromValue(&model));

    if (gridView!=nullptr)
    {
        QObject::connect(gridView, SIGNAL(released(int)), this, SLOT(onReleased(int)));

    }
    else
    {
         std::cout << "grid mouse not found "<< std::endl;
    }

//    phoneScreen = new PhoneScreen();
    phoneScreen->setEngine(m_engine);
}

void MainScreen::setEngine(QQmlApplicationEngine* engine)
{
    m_engine = engine;
    QObject *object = engine->rootObjects().at(0);
    m_window = qobject_cast <QQuickWindow*> (object);
}


void MainScreen::onReleased(int index)
{
    std::cout << "MainSCreen Button Pressed" << index << std::endl;
    switch(index)
    {
        case 0:
            phoneScreen->show();
            break;

        case 1:
            break;

        default:
            break;
    }
}
