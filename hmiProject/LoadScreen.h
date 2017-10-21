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
        m_model=nullptr;
    }
    void setModel(QQuickItem* model);
    void setMainWindow(QQmlApplicationEngine* window);


public slots:
     void onReleased(QVariant value);

public:
         QQuickItem* m_model;
         QQuickWindow* m_window;
         QQmlApplicationEngine* engine;

};

#endif // LOADSCREEN_H
