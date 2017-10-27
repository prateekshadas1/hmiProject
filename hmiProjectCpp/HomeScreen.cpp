#include "HomeScreen.h"
#include <iostream>
using namespace std;

HomeScreen::HomeScreen(QObject *parent) : QObject(parent)
{

    //mainScreen = new MainScreen();
}
void HomeScreen::onRefresh()
{
    cout<<"in homescreen class"<<endl;
    mainScreen = new MainScreen();
    mainScreen->setEngine(m_engine);
    mainScreen->show();
}

void HomeScreen::setEngine(QQmlApplicationEngine *engine)
{
    m_engine=engine;
}
