#ifndef MAINSCREEN_H
#define MAINSCREEN_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <PhoneScreen.h>
#include <RadioScreen.h>
#include <MediaScreen.h>
#include <NavigationScreen.h>
#include <SettingsScreen.h>
class RadioScreen;
class PhoneScreen;
class MediaScreen;
class NavigationScreen;
class SettingsScreen;
class MainScreen : public QObject
{
    Q_OBJECT
    public:
        explicit MainScreen(QObject *parent = nullptr);
        void show();
        void setEngine(QQmlApplicationEngine *engine);
        PhoneScreen* phoneScreen;
        RadioScreen* radioScreen;
        MediaScreen* mediaScreen;
        NavigationScreen* navigationScreen;
        SettingsScreen* settingsScreen;


    public slots:
        void onReleased(int index);

    private:
        QQmlApplicationEngine* m_engine;
        QQuickWindow* m_window;
};


#endif // MAINSCREEN_H
