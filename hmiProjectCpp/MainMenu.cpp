#include "MainMenu.h"
#include <iostream>
using namespace std;

MainMenu::MainMenu(QObject *parent) : QObject(parent)
{
 mMainMenuRootItem=nullptr;
}

void MainMenu::setMainScreen(QQuickItem *rootItem)
{
    mMainMenuRootItem = rootItem;
}
void MainMenu::onPressed()
{
    cout<<"onPressed from CPP side\n";

}
void MainMenu::onReleased(){
    cout<<"onReleased from CPP side\n";

}

void MainMenu::onEntered(){
    cout<<"onentered from CPP side\n";

}
void MainMenu::onExited(){
    cout<<"onexited from CPP side\n";

}
