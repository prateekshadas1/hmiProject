#ifndef NAVIGATIONSCREEN_H
#define NAVIGATIONSCREEN_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>
#include <MainScreen.h>
#include <HomeScreen.h>
class HomeScreen;
class MainScreen;
class NavigationScreen : public QObject
{
    Q_OBJECT
public:
    explicit NavigationScreen(QObject *parent = nullptr);
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
    QQuickItem* NavigationScreenRootItem;
    QQuickItem* homeButton;
    MainScreen* mainScreen2;
};

#endif // NAVIGATIONSCREEN_H
