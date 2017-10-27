#include "RadioScreen.h"
#include<iostream>
#include <QQmlComponent>
using namespace std;

RadioScreen::RadioScreen(QObject *parent) : QObject(parent)
{
    homeScreen = new HomeScreen();

}



void RadioScreen::show()
{
    QQmlComponent* RadioScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/RadioScreen.qml"));
    QQuickItem* RadioScreenRootItem = qobject_cast <QQuickItem*> (RadioScreenComponent->create());
    RadioScreenRootItem->setParentItem(m_window->contentItem());

    browse = RadioScreenRootItem->findChild<QQuickItem*>("browseButton");
    cout << "browse refresh found"<<endl;

    homeButton = RadioScreenRootItem->findChild<QQuickItem*>("homeButton");
    cout << "home refresh found"<<endl;


    showNextScreen();

    }

void RadioScreen::setEngine(QQmlApplicationEngine* engine)
{
    m_engine = engine;
    QObject *object = engine->rootObjects().at(0);
    m_window = qobject_cast <QQuickWindow*> (object);
}


void RadioScreen::showNextScreen()
{

    if (browse != nullptr)
    {
        cout << "browse refresh found"<<endl;
        QObject::connect(browse, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));
    }

    else{
        cout << "browse refresh not found"<<endl;

    }

    if(homeButton != nullptr)
    {
        cout << "home refresh found"<<endl;

        QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    }
    homeScreen->setEngine(m_engine);
}

void RadioScreen::onRefresh(QVariant value)
{
    if(value=="browseButton")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* browseScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/RadioBrowseScreen.qml"));
    QQuickItem* browseScreenRootItem = qobject_cast <QQuickItem*> (browseScreenComponent->create());
    browseScreenRootItem->setParentItem(m_window->contentItem());

    QQuickItem* back = browseScreenRootItem->findChild<QQuickItem*>("radioIcon");
    QObject::connect(back, SIGNAL(back()), this, SLOT(onBack()));

    homeButton = browseScreenRootItem->findChild<QQuickItem*>("homeButton");
    if(homeButton != nullptr)
    {
        cout << "home refresh found"<<endl;

        QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    }
    homeScreen->setEngine(m_engine);

//    QObject::connect(homeButton, SIGNAL(refresh()), this, SLOT(onRefresh()));

    }
    else
    {
        cout<<"browse not found"<<endl;
    }


    if(value=="home")
    {
        cout << "inside home"<<endl;
        mainScreen2 = new MainScreen();
        mainScreen2->setEngine(m_engine);
        mainScreen2->show();
    }
}

void RadioScreen::onBack()
{
  show();
}
