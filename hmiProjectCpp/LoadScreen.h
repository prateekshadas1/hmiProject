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
<<<<<<< HEAD
        m_engine = nullptr;
    }

=======
        m_engine=nullptr;
    }
    bool addclimatecontrol=false;
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
    void setEngine(QQmlApplicationEngine* engine);


public slots:
     void onReleased(QVariant value);
     int onEntered();

public:
<<<<<<< HEAD

         QQmlApplicationEngine* m_engine;


=======
         QQmlApplicationEngine* m_engine;

>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
};

#endif // LOADSCREEN_H
