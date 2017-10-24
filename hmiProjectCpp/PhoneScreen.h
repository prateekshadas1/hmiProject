#ifndef PHONESCREEN_H
#define PHONESCREEN_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <QQuickItem>

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

};

#endif // PHONESCREEN_H
