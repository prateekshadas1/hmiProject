#ifndef SCREENTRANSITIONS_H
#define SCREENTRANSITIONS_H

#include <QObject>
#include <QQuickItem>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQmlComponent>
<<<<<<< HEAD
=======
#include <string>
#include <QString>
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab


class ScreenTransitions: public QObject
{
    Q_OBJECT

public:
   explicit ScreenTransitions(QObject *parent = nullptr)
    {
<<<<<<< HEAD
        m_PhoneScreenRootItem = nullptr;
                m_engine= nullptr;
                m_MainWindow= nullptr;
                m_component= nullptr;
                m_screen = "qrc:/MainScreen.qml";


    }
=======
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
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab

    void setPhoneScreen(QQuickItem* phoneItem);
    void setEngine(QQmlApplicationEngine* engine);
    void setWindow(QQuickWindow* Mainwindow);
<<<<<<< HEAD
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
=======
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
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab


};

#endif // SCREENTRANSITIONS_H
