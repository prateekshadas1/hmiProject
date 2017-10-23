#include "ScreenTransitions.h"
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>
#include <QQmlComponent>
#include <iostream>
#include <ListModel.h>
#include <QObject>

using namespace std;

void ScreenTransitions::setEngine(QQmlApplicationEngine* engine)
{
    m_engine = engine;
    QObject *object = engine->rootObjects().at(0);
    m_MainWindow = qobject_cast <QQuickWindow*> (object);
}

void ScreenTransitions::onReleased(int index)
{
    cout <<"inside released"<<endl;
    switch(index){

    case 0:
        m_screen = "qrc:/PhoneScreen.qml";
        break;
    case 1:
        m_screen = "qrc:/RadioScreen.qml";
        break;
    case 2:
        m_screen = "qrc:/MediaScreen.qml";
        break;
    case 3:
        m_screen = "qrc:/NavigationScreen.qml";
        break;
    case 4:
        m_screen = "qrc:/SettingsScreen.qml";
        break;
    }

   setScreen();
}

void ScreenTransitions::setScreen()
{
    ScreenTransitions screenTransitions;
    QQmlComponent* qmlComponent = new QQmlComponent(m_engine,QUrl(m_screen));
    QQuickItem* NextScreenRootItem = qobject_cast <QQuickItem*> (qmlComponent->create());
    NextScreenRootItem->setParentItem(m_MainWindow->contentItem());


    presentScreen = "qrc:/PhoneScreen.qml";
    if(m_screen == presentScreen )
    {


    QQuickItem* dial = NextScreenRootItem->findChild<QQuickItem*>("dial");
//    QQuickItem* messages = NextScreenRootItem->findChild<QQuickItem*>("messages");
    QQuickItem* contacts = NextScreenRootItem->findChild<QQuickItem*>("contacts");
    QQuickItem* homebutton = NextScreenRootItem->findChild<QQuickItem*>("PhoneScreenHomeButton");

    if (dial != nullptr)
    {
        cout << "dial refresh found"<<endl;
        QObject::connect(dial, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));


    }

   else
    {
        cout << "button not found "<<endl;
    }

    if (homebutton != nullptr)
    {
        cout << "dial refresh found"<<endl;
        QObject::connect(homebutton, SIGNAL(refresh(QVariant)), home, SLOT(onRefresh(QVariant)));


    }

   else
    {
        cout << "button not found "<<endl;
    }



    if (contacts != nullptr)
    {
        cout << "contacts refresh found"<<endl;
        QObject::connect(contacts, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));


    }

   else
    {
        cout << "button not found "<<endl;
    }
    }

}

void ScreenTransitions::onRefresh(QVariant value)
{
    if(value=="dial")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* DialScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/DialScreen.qml"));
    QQuickItem* DialScreenRootItem = qobject_cast <QQuickItem*> (DialScreenComponent->create());
    DialScreenRootItem->setParentItem(m_MainWindow->contentItem());
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
    ContactsScreenRootItem->setParentItem(m_MainWindow->contentItem());
    }
    else
    {
        cout<<"dial not found"<<endl;
    }




}




