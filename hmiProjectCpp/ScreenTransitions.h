#ifndef SCREENTRANSITIONS_H
#define SCREENTRANSITIONS_H

#include <QObject>
#include <QQuickItem>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQmlComponent>
#include <string>


class ListModel;


class ScreenTransitions: public QObject
{
    Q_OBJECT

public:
   explicit ScreenTransitions(QObject *parent = nullptr)
    {
                m_engine= nullptr;
                m_MainWindow= nullptr;
                m_screen = "qrc:/MainScreen.qml";


    }
    QQuickWindow* m_MainWindow;


    void setPhoneScreen(QQuickItem* phoneItem);
    void setEngine(QQmlApplicationEngine* engine);
    void setScreen();



public slots:
        void onReleased(int index);
        void onRefresh(QVariant value);

private:
     QQmlApplicationEngine* m_engine;

     QQmlComponent* qmlComponent;
     QUrl m_screen;
     QUrl presentScreen;
     QQmlComponent* MainScreenComponent;
     QQuickItem* MainScreenRootItem;
     ListModel* home;
};

#endif // SCREENTRANSITIONS_H
