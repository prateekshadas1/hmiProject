#ifndef SCREENTRANSITIONS_H
#define SCREENTRANSITIONS_H

#include <QObject>
#include <QQuickItem>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQmlComponent>
#include <string>
#include <QString>


class ScreenTransitions: public QObject
{
    Q_OBJECT

public:
   explicit ScreenTransitions(QObject *parent = nullptr)
    {
                m_engine= nullptr;
                m_MainWindow= nullptr;
                m_screen = "qrc:/MainScreen.qml";

                listUrls << "qrc:/PhoneScreen.qml";
                listUrls << "qrc:/RadioScreen.qml";
                listUrls << "qrc:/MediaScreen.qml";
                listUrls << "qrc:/NavigationScreen.qml";
                listUrls << "qrc:/SettingsScreen.qml";


      }
    QQuickWindow* m_MainWindow;

    void setPhoneScreen(QQuickItem* phoneItem);
    void setEngine(QQmlApplicationEngine* engine);
    void setWindow(QQuickWindow* Mainwindow);
    void setScreen();

    QStringList listUrls;


public slots:
        void onReleased(int index);
        void onRefresh(QVariant value);
            void onReleasedHome();

private:
     QQmlApplicationEngine* m_engine;
     QQmlComponent* qmlComponent;
     QUrl m_screen;
     QUrl presentScreen;
     QQmlComponent* MainScreenComponent;
     QQuickItem* MainScreenRootItem;


};

#endif // SCREENTRANSITIONS_H
