#include "HomeButton.h"
#include <iostream>

using namespace std;

HomeButton::HomeButton(QObject *parent) : QObject(parent)
{

}

void HomeButton::showMainScreen()
{
//QQuickItem* homeButton = phoneScreen2.PhoneScreenRootItem->findChild<QQuickItem*>("PhoneScreenHomeButton");

//if (homeButton!=nullptr)
//{
//    cout << "inside connect"<< endl;
//    QObject::connect(homeButton, SIGNAL(released()), this, SLOT(onReleased()));

//}
//else
//{
//     std::cout << "home button not found "<< std::endl;
//}
}


void HomeButton::onReleased()
{
    cout << "inside released"<< endl;
    //mainScreen2.show();
}


