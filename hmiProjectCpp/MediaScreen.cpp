#include "MediaScreen.h"
#include<iostream>

using namespace std;
MediaScreen::MediaScreen(QObject *parent) : QObject(parent)
{
    homeScreen = new HomeScreen();

}
void MediaScreen::show()
{
    QQmlComponent* MediaScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/MediaScreen.qml"));
    QQuickItem* MediaScreenRootItem = qobject_cast <QQuickItem*> (MediaScreenComponent->create());
    MediaScreenRootItem->setParentItem(m_window->contentItem());

    homeButton = MediaScreenRootItem->findChild<QQuickItem*>("homeButton");

    showNextScreen();

    }

void MediaScreen::setEngine(QQmlApplicationEngine* engine)
{
    m_engine = engine;
    QObject *object = engine->rootObjects().at(0);
    m_window = qobject_cast <QQuickWindow*> (object);
}


void MediaScreen::showNextScreen()
{
    if(homeButton != nullptr)
    {
        cout << "home refresh found"<<endl;

        QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    }
    homeScreen->setEngine(m_engine);
}

void MediaScreen::onRefresh(QVariant value)
{

    if(value=="home")
    {
        cout << "inside home"<<endl;
        mainScreen2 = new MainScreen();
        mainScreen2->setEngine(m_engine);
        mainScreen2->show();
    }
}

void MediaScreen::onBack()
{
  show();
}
