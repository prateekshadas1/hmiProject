#ifndef MAINMENU_H
#define MAINMENU_H

#include <QObject>
#include <QQuickItem>
#include <QVariant>

class MainMenu : public QObject
{
    Q_OBJECT
public:
    explicit MainMenu(QObject *parent = nullptr);
    void setMainScreen(QQuickItem* rootItem);

signals:

public slots:
    void onPressed();
    void onReleased();
    void onEntered();
    void onExited();

private:
    QQuickItem* mMainMenuRootItem;
};

#endif // MAINMENU_H
