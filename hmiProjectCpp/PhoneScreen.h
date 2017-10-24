#ifndef PHONESCREEN_H
#define PHONESCREEN_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>
#include <HomeButton.h>
#include <MainScreen.h>

class PhoneScreen : public QObject
{
    Q_OBJECT

public:
    explicit PhoneScreen(QObject *parent = nullptr);
    void setEngine(QQmlApplicationEngine* engine);
    void show();

private:
    QQmlApplicationEngine* m_engine;
    QQuickWindow* m_window;
    QQuickItem* PhoneScreenRootItem;
    QQuickItem* dial;
    QQuickItem* contacts;
    QQuickItem* homeButton;
    MainScreen* mainScreen2;

public slots:
    void onRefresh(QVariant value);
    void showNextScreen();
    void onBack();
};

#endif // PHONESCREEN_H
