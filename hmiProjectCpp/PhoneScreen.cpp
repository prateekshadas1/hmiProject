#include "PhoneScreen.h"

PhoneScreen::PhoneScreen(QObject *parent) : QObject(parent)
{

}

void PhoneScreen::show()
{
    QQmlComponent* PhoneScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/PhoneScreen.qml"));
    QQuickItem* PhoneScreenRootItem = qobject_cast <QQuickItem*> (PhoneScreenComponent->create());
    PhoneScreenRootItem->setParentItem(m_window->contentItem());
}

void PhoneScreen::setEngine(QQmlApplicationEngine* engine)
{
    m_engine = engine;
    QObject *object = engine->rootObjects().at(0);
    m_window = qobject_cast <QQuickWindow*> (object);
}


