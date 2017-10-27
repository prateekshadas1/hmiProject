#include "PhoneScreen.h"
#include<iostream>

using namespace std;


PhoneScreen::PhoneScreen(QObject *parent) : QObject(parent)
{

    homeScreen = new HomeScreen();

}

void PhoneScreen::show()
{
    QQmlComponent* PhoneScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/PhoneScreen.qml"));
    QQuickItem* PhoneScreenRootItem = qobject_cast <QQuickItem*> (PhoneScreenComponent->create());
    PhoneScreenRootItem->setParentItem(m_window->contentItem());

    dial = PhoneScreenRootItem->findChild<QQuickItem*>("dial");
    contacts = PhoneScreenRootItem->findChild<QQuickItem*>("contacts");
    homeButton = PhoneScreenRootItem->findChild<QQuickItem*>("homeButton");


    showNextScreen();

    }

void PhoneScreen::setEngine(QQmlApplicationEngine* engine)
{
    m_engine = engine;
    QObject *object = engine->rootObjects().at(0);
    m_window = qobject_cast <QQuickWindow*> (object);
}


void PhoneScreen::showNextScreen()
{
//    homeScreen = new HomeScreen();


    if (dial != nullptr)
    {
        cout << "dial refresh found"<<endl;
        QObject::connect(dial, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));
    }

    if (contacts != nullptr)
    {
        cout << "contacts refresh found"<<endl;
        QObject::connect(contacts, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));

    }



    if(homeButton != nullptr)
    {
        cout << "home refresh found"<<endl;

        QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    }
    homeScreen->setEngine(m_engine);
}

void PhoneScreen::onRefresh(QVariant value)
{
    //HomeScreen homeScreen;
    if(value=="dial")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* DialScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/DialScreen.qml"));
    QQuickItem* DialScreenRootItem = qobject_cast <QQuickItem*> (DialScreenComponent->create());
    DialScreenRootItem->setParentItem(m_window->contentItem());

    QQuickItem* back = DialScreenRootItem->findChild<QQuickItem*>("phoneIcon");
    QObject::connect(back, SIGNAL(back()), this, SLOT(onBack()));

    homeButton = DialScreenRootItem->findChild<QQuickItem*>("homeButton");
    //homeScreen = new HomeScreen();

    QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    homeScreen->setEngine(m_engine);

    }
    else
    {
        cout<<"dial not found"<<endl;
    }
    if(value=="contacts")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* ContactsScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/ContactsScreen.qml"));
    QQuickItem* ContactsScreenRootItem = qobject_cast <QQuickItem*> (ContactsScreenComponent->create());
    ContactsScreenRootItem->setParentItem(m_window->contentItem());

    QQuickItem* back = ContactsScreenRootItem->findChild<QQuickItem*>("phoneIcon");
    QObject::connect(back, SIGNAL(back()), this, SLOT(onBack()));

    homeButton = ContactsScreenRootItem->findChild<QQuickItem*>("homeButton");
    //homeScreen = new HomeScreen();
    QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    homeScreen->setEngine(m_engine);

    }
    else
    {
        cout<<"dial not found"<<endl;
    }

//    if(value=="home")
//    {
//        cout << "inside home"<<endl;
//        mainScreen2 = new MainScreen();
//        mainScreen2->setEngine(m_engine);
//        mainScreen2->show();
//    }
}

void PhoneScreen::onBack()
{
  show();
}
