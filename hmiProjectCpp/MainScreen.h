#ifndef MAINSCREEN_H
#define MAINSCREEN_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <PhoneScreen.h>


class MainScreen : public QObject
{
    Q_OBJECT
    public:
        explicit MainScreen(QObject *parent = nullptr);
        void show();
        void setEngine(QQmlApplicationEngine *engine);
        PhoneScreen phoneScreen;

    public slots:
        void onReleased(int index);

    private:
        QQmlApplicationEngine* m_engine;
        QQuickWindow* m_window;
};


#endif // MAINSCREEN_H
