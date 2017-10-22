#include "ScreenTransitions.h"
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>
#include <QQmlComponent>
#include <iostream>
#include <ListModel.h>


using namespace std;

void ScreenTransitions::setPhoneScreen(QQuickItem* phoneItem)
{
    m_PhoneScreenRootItem = phoneItem;
}

void ScreenTransitions::setEngine(QQmlApplicationEngine* engine)
{
    m_engine = engine;
}

void ScreenTransitions::setWindow(QQuickWindow* Mainwindow)
{
    m_MainWindow = Mainwindow;
    std::cout<<"Main Window "<<endl;
}

void ScreenTransitions::setComponent(QQmlComponent* component)
{
    m_component = component;
}

void ScreenTransitions::onReleased(int index)
{

   if(index == 1)
   {
       cout << "index from cpp" << index << endl;
       m_screen = "qrc:/RadioScreen.qml";
   }

   if(index == 0)
   {
       m_screen = "qrc:/PhoneScreen.qml";
   }

   setScreen();
}

void ScreenTransitions::setScreen()
{
    QQmlComponent* qmlComponent = new QQmlComponent(m_engine,QUrl(m_screen));
    QQuickItem* PhoneScreenRootItem = qobject_cast <QQuickItem*> (qmlComponent->create());
    PhoneScreenRootItem->setParentItem(m_MainWindow->contentItem());
}



