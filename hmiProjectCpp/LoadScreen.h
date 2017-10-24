#ifndef LOADSCREEN_H
#define LOADSCREEN_H

#include <QObject>
#include <QQuickItem>
#include <QQuickWindow>
#include <QQmlApplicationEngine>


class LoadScreen : public QObject
{
    Q_OBJECT
public:
    explicit LoadScreen(QObject *parent = nullptr)
    {
        m_engine = nullptr;
    }

    void setEngine(QQmlApplicationEngine* engine);


public slots:
     void onReleased(QVariant value);

public:

         QQmlApplicationEngine* m_engine;


};

#endif // LOADSCREEN_H
