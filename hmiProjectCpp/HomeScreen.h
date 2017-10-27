#ifndef HOMESCREEN_H
#define HOMESCREEN_H

#include <MainScreen.h>
#include <QObject>

#include <QQuickWindow>
#include <QQmlApplicationEngine>

class MainScreen;

class HomeScreen : public QObject
{
    Q_OBJECT
public:
    explicit HomeScreen(QObject *parent = nullptr);
    void setEngine(QQmlApplicationEngine *engine);
    MainScreen* mainScreen;


public slots:
      void onRefresh();
private:
    QQmlApplicationEngine* m_engine;
    QQuickWindow* m_window;
};

#endif // HOMESCREEN_H
