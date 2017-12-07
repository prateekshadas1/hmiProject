#ifndef HOMEBUTTON_H
#define HOMEBUTTON_H

#include <QObject>

class PhoneScreen;
class MainScreen;

class HomeButton : public QObject
{
    Q_OBJECT
public:
    explicit HomeButton(QObject *parent = nullptr);
//    PhoneScreen *phoneScreen2 = new PhoneScreen;
//    MainScreen *mainScreen2 = new MainScreen;
    void showMainScreen();

public slots:
    void onReleased();

};

#endif // HOMEBUTTON_H
