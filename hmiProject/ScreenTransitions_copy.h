#ifndef SCREENTRANSITIONS_H
#define SCREENTRANSITIONS_H

#include <QQuickView>

class ScreenTransitions:public QQuickView
{
public:
    ScreenTransitions();

    void setSource (const QUrl & url);
};

#endif // SCREENTRANSITIONS_H
