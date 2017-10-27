#ifndef SETTINGSSCREEN_H
#define SETTINGSSCREEN_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>
#include <MainScreen.h>
#include <HomeScreen.h>
class HomeScreen;
class MainScreen;
class SettingsScreen : public QObject
{
    Q_OBJECT
public:
    explicit SettingsScreen(QObject *parent = nullptr);
    void setEngine(QQmlApplicationEngine* engine);
    void show();
    HomeScreen* homeScreen;

public slots:
    void onRefresh(QVariant value);
    void showNextScreen();
    void onBack();
private:
    QQmlApplicationEngine* m_engine;
    QQuickWindow* m_window;
    QQuickItem* SettingsScreenRootItem;
    QQuickItem* media;
    QQuickItem* radio;
    QQuickItem* navigation;
    QQuickItem* phone;

    QQuickItem* homeButton;
    MainScreen* mainScreen2;
};

#endif // SETTINGSSCREEN_H
