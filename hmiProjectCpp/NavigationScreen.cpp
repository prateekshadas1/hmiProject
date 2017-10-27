#include "NavigationScreen.h"
#include<iostream>

using namespace std;
NavigationScreen::NavigationScreen(QObject *parent) : QObject(parent)
{
    homeScreen = new HomeScreen();

}
void NavigationScreen::show()
{
    QQmlComponent* NavigationScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/NavigationScreen.qml"));
    QQuickItem* NavigationScreenRootItem = qobject_cast <QQuickItem*> (NavigationScreenComponent->create());
    NavigationScreenRootItem->setParentItem(m_window->contentItem());

    homeButton = NavigationScreenRootItem->findChild<QQuickItem*>("homeButton");

    showNextScreen();

    }

void NavigationScreen::setEngine(QQmlApplicationEngine* engine)
{
    m_engine = engine;
    QObject *object = engine->rootObjects().at(0);
    m_window = qobject_cast <QQuickWindow*> (object);
}


void NavigationScreen::showNextScreen()
{
    if(homeButton != nullptr)
    {
        cout << "home refresh found"<<endl;

        QObject::connect(homeButton, SIGNAL(refresh()), homeScreen, SLOT(onRefresh()));
    }
    homeScreen->setEngine(m_engine);
}

void NavigationScreen::onRefresh(QVariant value)
{

    if(value=="home")
    {
        cout << "inside home"<<endl;
        mainScreen2 = new MainScreen();
        mainScreen2->setEngine(m_engine);
        mainScreen2->show();
    }
}

void NavigationScreen::onBack()
{
  show();
}
