#ifndef RADIOSCREEN_H
#define RADIOSCREEN_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>
#include <MainScreen.h>
#include <HomeScreen.h>
class HomeScreen;
class MainScreen;
class RadioScreen:public QObject
{
    Q_OBJECT


public:
    explicit RadioScreen(QObject *parent = nullptr);
    void setEngine(QQmlApplicationEngine* engine);
    void show();
    HomeScreen* homeScreen;

private:
    QQmlApplicationEngine* m_engine;
    QQuickWindow* m_window;
    QQuickItem* RadioScreenRootItem;
    QQuickItem* browse;
    QQuickItem* homeButton;
    MainScreen* mainScreen2;

public slots:
    void onRefresh(QVariant value);
    void showNextScreen();
    void onBack();
};

#endif // RADIOSCREEN_H
