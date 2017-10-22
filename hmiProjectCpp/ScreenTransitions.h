#ifndef SCREENTRANSITIONS_H
#define SCREENTRANSITIONS_H

#include <QObject>
#include <QQuickItem>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQmlComponent>


class ScreenTransitions: public QObject
{
    Q_OBJECT

public:
   explicit ScreenTransitions(QObject *parent = nullptr)
    {
        m_PhoneScreenRootItem = nullptr;
                m_engine= nullptr;
                m_MainWindow= nullptr;
                m_component= nullptr;
                m_screen = "qrc:/MainScreen.qml";


    }

    void setPhoneScreen(QQuickItem* phoneItem);
    void setEngine(QQmlApplicationEngine* engine);
    void setWindow(QQuickWindow* Mainwindow);
    void setComponent (QQmlComponent* component);
    void setScreen();

    QUrl m_screen;

public slots:
        void onReleased(int index);

private:
     QQuickItem* m_PhoneScreenRootItem;
     QQmlApplicationEngine* m_engine;
     QQuickWindow* m_MainWindow;
     QQmlComponent* m_component;
     QQuickItem* m_radioScreenRootItem;
     QQmlComponent* qmlComponent;


};

#endif // SCREENTRANSITIONS_H
