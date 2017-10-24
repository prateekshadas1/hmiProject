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
    QObject* object = engine->rootObjects().at(0);
    m_MainWindow = qobject_cast<QQuickWindow*>(object);
}

void ScreenTransitions::onReleased(int index)
{
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
//    ScreenTransitions screenTransitions;
//    QQmlComponent* qmlComponent = new QQmlComponent(m_engine,QUrl(m_screen));
//    QQuickItem* NextScreenRootItem = qobject_cast <QQuickItem*> (qmlComponent->create());
//    NextScreenRootItem->setParentItem(m_MainWindow->contentItem());



//    if(m_screen == listUrls.at(0) )
//    {


//    QQuickItem* dial = NextScreenRootItem->findChild<QQuickItem*>("dial");
//    QQuickItem* contacts = NextScreenRootItem->findChild<QQuickItem*>("contacts");

//    if (dial != nullptr)
//    {
//        cout << "dial refresh found"<<endl;
//        QObject::connect(dial, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));


//    }


//    if (contacts != nullptr)
//    {
//        cout << "contacts refresh found"<<endl;
//        QObject::connect(contacts, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));

//    }


//    }

//    if(m_screen==listUrls.at(1))
//    {
//        QQuickItem* browse = NextScreenRootItem->findChild<QQuickItem*>("browseButton");

//        if (browse != nullptr)
//        {
//            cout << "browsh refresh found"<<endl;
//            QObject::connect(browse, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));


//        }
//    }

//    if(m_screen==listUrls.at(4))
//    {
//        QQuickItem* radio = NextScreenRootItem->findChild<QQuickItem*>("radioButton");
//        QQuickItem* media = NextScreenRootItem->findChild<QQuickItem*>("mediaButton");
//        QQuickItem* phone = NextScreenRootItem->findChild<QQuickItem*>("phoneButton");
//        QQuickItem* navigation = NextScreenRootItem->findChild<QQuickItem*>("navigationButton");
//        QQuickItem* homeButton = NextScreenRootItem->findChild<QQuickItem*>("mainScreenButton");

//        if(homeButton != nullptr)
//        {
//            cout << "home button found"<<endl;
//            QObject::connect(homeButton, SIGNAL(refresh()), this, SLOT(onReleasedHome()));
//        }

//        if (radio != nullptr)
//        {
//            cout << "radio refresh found"<<endl;
//            QObject::connect(radio, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));


//        }
//        if (media != nullptr)
//        {
//            cout << "media refresh found"<<endl;
//            QObject::connect(media, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));


//        }
//        if (phone != nullptr)
//        {
//            cout << "phone refresh found"<<endl;
//            QObject::connect(phone, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));


//        }
//        if (navigation != nullptr)
//        {
//            cout << "navigation refresh found"<<endl;
//            QObject::connect(navigation, SIGNAL(refresh(QVariant)), this, SLOT(onRefresh(QVariant)));


//        }

//    }



}

void ScreenTransitions::onRefresh(QVariant value)
{
    if(value=="browseButton")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* MainScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/RadioBrowseScreen.qml"));
    QQuickItem* MainScreenRootItem = qobject_cast <QQuickItem*> (MainScreenComponent->create());
    MainScreenRootItem->setParentItem(m_MainWindow->contentItem());
    }
    else
    {
        cout<<"Browse not found"<<endl;
    }
    if(value=="radioButton")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* MainScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/RadioSettings.qml"));
    QQuickItem* MainScreenRootItem = qobject_cast <QQuickItem*> (MainScreenComponent->create());
    MainScreenRootItem->setParentItem(m_MainWindow->contentItem());
    }
    if(value=="phoneButton")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* MainScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/PhoneSettings.qml"));
    QQuickItem* MainScreenRootItem = qobject_cast <QQuickItem*> (MainScreenComponent->create());
    MainScreenRootItem->setParentItem(m_MainWindow->contentItem());
    }
    if(value=="mediaButton")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* MainScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/MediaSettings.qml"));
    QQuickItem* MainScreenRootItem = qobject_cast <QQuickItem*> (MainScreenComponent->create());
    MainScreenRootItem->setParentItem(m_MainWindow->contentItem());
    }
    if(value=="navigationButton")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* MainScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/NavigationSettings.qml"));
    QQuickItem* MainScreenRootItem = qobject_cast <QQuickItem*> (MainScreenComponent->create());
    MainScreenRootItem->setParentItem(m_MainWindow->contentItem());
    }
    if(value=="dial")
    {
    cout<<"refresh"<<endl;
    QQmlComponent* MainScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/DialScreen.qml"));
    QQuickItem* MainScreenRootItem = qobject_cast <QQuickItem*> (MainScreenComponent->create());
    MainScreenRootItem->setParentItem(m_MainWindow->contentItem());
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

//void ScreenTransitions::onReleasedHome()
//{
//    ListModel model2;

//    mainScreenElements phoneButton;
//    phoneButton.name = "Phone";
//    phoneButton.icon = "qrc:/Images/phone1.png";
//    model2.addEntry(phoneButton);

//    mainScreenElements radioButton;
//    radioButton.name = "Radio";
//    radioButton.icon = "qrc:/Images/radio1.png";
//    model2.addEntry(radioButton);

//    mainScreenElements mediaButton;
//    mediaButton.name = "Media";
//    mediaButton.icon = "qrc:/Images/media.png";
//    model2.addEntry(mediaButton);

//    mainScreenElements navigationButton;
//    navigationButton.name = "Navigation";
//    navigationButton.icon = "qrc:/Images/gps.png";
//    model2.addEntry(navigationButton);

//    mainScreenElements settingsButton;
//    settingsButton.name = "Settings";
//    settingsButton.icon = "qrc:/Images/setting icon.png";
//    model2.addEntry(settingsButton);

//    mainScreenElements temperatureButton;
//    temperatureButton.name = "Temperature";
//    temperatureButton.icon = "qrc:/Images/thermometer.png";

//    model2.addEntry(temperatureButton);


//    mainScreenElements futureButton;
//    futureButton.name = "Future";
//    futureButton.icon = "qrc:/Images/plus.png";
//    model2.addEntry(futureButton);


//    QQmlComponent* MainScreenComponent2 = new QQmlComponent(m_engine,QUrl("qrc:/MainScreen.qml"));
//    QQuickItem* MainScreenRootItem2 = qobject_cast <QQuickItem*> (MainScreenComponent2->create());
//    MainScreenRootItem2->setParentItem(m_MainWindow->contentItem());

//    QQuickItem* gridView = MainScreenRootItem2->findChild<QQuickItem*>("gridView");
//    gridView->setProperty("model", QVariant::fromValue(&model2));
//    QObject::connect(gridView, SIGNAL(released(int)), this, SLOT(onReleased(int)));

//}
