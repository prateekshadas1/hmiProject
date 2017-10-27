#include "SettingsScreen.h"
#include <QQmlComponent>
#include <iostream>
using namespace std;

SettingsScreen::SettingsScreen(QObject *parent) : QObject(parent)
{
    homeScreen = new HomeScreen();

}
void SettingsScreen::show()
{
    QQmlComponent* SettingsScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/SettingsScreen.qml"));
    QQuickItem* SettingsScreenRootItem = qobject_cast <QQuickItem*> (SettingsScreenComponent->create());
    SettingsScreenRootItem->setParentItem(m_window->contentItem());

    radio = SettingsScreenRootItem->findChild<QQuickItem*>("radioButton");
    media = SettingsScreenRootItem->findChild<QQuickItem*>("mediaButton");
    phone = SettingsScreenRootItem->findChild<QQuickItem*>("phoneButton");
    navigation = SettingsScreenRootItem->findChild<QQuickItem*>("navigationButton");

    homeButton = SettingsScreenRootItem->findChild<QQuickItem*>("homeButton");


    showNextScreen();

    }

void SettingsScreen::setEngine(QQmlApplicationEngine* engine)
{
    m_engine = engine;
    QObject *object = engine->rootObjects().at(0);
    m_window = qobject_cast <QQuickWindow*> (object);
}


void SettingsScreen::showNextScreen()
{

    if (radio != nullptr)
    {
        cout << "radio refresh found"<<endl;
        QObject::connect(radio, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));
    }

    if (media != nullptr)
    {
        QObject::connect(media, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));
    }
    if (phone != nullptr)
    {
        QObject::connect(phone, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));
    }
    if (navigation != nullptr)
    {
        QObject::connect(navigation, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));
    }



    if(homeButton != nullptr)
    {
        cout << "home refresh found"<<endl;

        QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    }
    homeScreen->setEngine(m_engine);
}

void SettingsScreen::onRefresh(QVariant value)
{
    if(value=="radioButton")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* radioScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/RadioSettings.qml"));
    QQuickItem* radioScreenRootItem = qobject_cast <QQuickItem*> (radioScreenComponent->create());
    radioScreenRootItem->setParentItem(m_window->contentItem());

    QQuickItem* back = radioScreenRootItem->findChild<QQuickItem*>("settingsIcon");
    QObject::connect(back, SIGNAL(back()), this, SLOT(onBack()));

    homeButton = radioScreenRootItem->findChild<QQuickItem*>("homeButton");
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
        cout<<"radio not found"<<endl;
    }

    if(value=="mediaButton")
    {
    QQmlComponent* mediaScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/MediaSettings.qml"));
    QQuickItem* mediaScreenRootItem = qobject_cast <QQuickItem*> (mediaScreenComponent->create());
    mediaScreenRootItem->setParentItem(m_window->contentItem());

    QQuickItem* back = mediaScreenRootItem->findChild<QQuickItem*>("settingsIcon");
    QObject::connect(back, SIGNAL(back()), this, SLOT(onBack()));

    homeButton = mediaScreenRootItem->findChild<QQuickItem*>("homeButton");

    if(homeButton != nullptr)
    {
        cout << "home refresh found"<<endl;

        QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    }
    homeScreen->setEngine(m_engine);

//    QObject::connect(homeButton, SIGNAL(refresh()), this, SLOT(onRefresh()));

    }
    if(value=="phoneButton")
    {
    QQmlComponent* phoneScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/PhoneSettings.qml"));
    QQuickItem* phoneScreenRootItem = qobject_cast <QQuickItem*> (phoneScreenComponent->create());
    phoneScreenRootItem->setParentItem(m_window->contentItem());

    QQuickItem* back = phoneScreenRootItem->findChild<QQuickItem*>("settingsIcon");
    QObject::connect(back, SIGNAL(back()), this, SLOT(onBack()));
     homeButton = phoneScreenRootItem->findChild<QQuickItem*>("homeButton");

    if(homeButton != nullptr)
    {
        cout << "home refresh found"<<endl;

        QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    }
    homeScreen->setEngine(m_engine);

//    QObject::connect(homeButton, SIGNAL(refresh()), this, SLOT(onRefresh()));

    }
    if(value=="navigationButton")
    {
    QQmlComponent* navigationScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/NavigationSettings.qml"));
    QQuickItem* navigationScreenRootItem = qobject_cast <QQuickItem*> (navigationScreenComponent->create());
    navigationScreenRootItem->setParentItem(m_window->contentItem());

    QQuickItem* back = navigationScreenRootItem->findChild<QQuickItem*>("settingsIcon");
    QObject::connect(back, SIGNAL(back()), this, SLOT(onBack()));
    homeButton = navigationScreenRootItem->findChild<QQuickItem*>("homeButton");

    if(homeButton != nullptr)
    {
        cout << "home refresh found"<<endl;

        QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    }
    homeScreen->setEngine(m_engine);

//    QObject::connect(homeButton, SIGNAL(refresh()), this, SLOT(onRefresh()));

    }


    if(value=="home")
    {
        cout << "inside home"<<endl;
        mainScreen2 = new MainScreen();
        mainScreen2->setEngine(m_engine);
        mainScreen2->show();
    }
}

void SettingsScreen::onBack()
{
  show();
}
