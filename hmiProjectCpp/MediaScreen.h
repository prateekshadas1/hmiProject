#ifndef MEDIASCREEN_H
#define MEDIASCREEN_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>
#include <MainScreen.h>
#include <HomeScreen.h>
class MainScreen;
class HomeScreen;

class MediaScreen : public QObject
{
    Q_OBJECT
public:
    explicit MediaScreen(QObject *parent = nullptr);
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
    QQuickItem* MediaScreenRootItem;
    QQuickItem* homeButton;
    MainScreen* mainScreen2;
};

#endif // MEDIASCREEN_H
