#include "ListModel.h"
<<<<<<< HEAD
#include <iostream>

using namespace std;

ListModel::ListModel(){
    m_index = 0;

}


=======
#include "iostream"
#include <QQmlComponent>
#include <QQuickItem>
using namespace std;
#include <ScreenTransitions.h>
#include <QQmlApplicationEngine>
#include <QQuickWindow>

ListModel::ListModel()
{
    m_index=0;
}
void ListModel::setEngine(QQmlApplicationEngine *engine)
{
    m_engine = engine;
}

void ListModel::setWindow(QQuickWindow *window)
{
    m_window = window;
}
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
int ListModel::rowCount(const QModelIndex &parent) const
{
    return m_elementList.count();
}

<<<<<<< HEAD
=======
void ListModel::gridElements()
{
    mainScreenElements phoneButton;
        phoneButton.name = "Phone";
        phoneButton.icon = "qrc:/Images/phone1.png";
        addEntry(phoneButton);

        mainScreenElements radioButton;
        radioButton.name = "Radio";
        radioButton.icon = "qrc:/Images/radio1.png";
        addEntry(radioButton);

        mainScreenElements mediaButton;
        mediaButton.name = "Media";
        mediaButton.icon = "qrc:/Images/media.png";
        addEntry(mediaButton);

        mainScreenElements navigationButton;
        navigationButton.name = "Navigation";
        navigationButton.icon = "qrc:/Images/gps.png";
        addEntry(navigationButton);

        mainScreenElements settingsButton;
        settingsButton.name = "Settings";
        settingsButton.icon = "qrc:/Images/setting icon.png";
        addEntry(settingsButton);

        mainScreenElements futureButton;
        futureButton.name = "Future";
        futureButton.icon = "qrc:/Images/plus.png";
        addEntry(futureButton);

        QQmlComponent* MainScreenComponent = new QQmlComponent(m_engine,QUrl("qrc:/MainScreen.qml"));
        QQuickItem* MainScreenRootItem = qobject_cast <QQuickItem*> (MainScreenComponent->create());
        MainScreenRootItem->setParentItem(m_window->contentItem());


        QQuickItem* gridView = MainScreenRootItem->findChild<QQuickItem*>("gridView");
        gridView->setProperty("model", QVariant::fromValue(this));

        if (gridView!=nullptr)
        {
            QObject::connect(gridView, SIGNAL(released(int)), &screenTransitions2, SLOT(onReleased(int)));

        }
        else
        {
             cout << "grid mouse not found "<<endl;
        }

        screenTransitions2.setWindow(m_window);
        screenTransitions2.setEngine(m_engine);

}

>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
QHash<int, QByteArray> ListModel::roleNames() const
{
    QHash<int, QByteArray> roleNames;

    roleNames [1] = "name";
    roleNames [2] = "icon"  ;
    return roleNames;
}

QVariant ListModel::data(const QModelIndex &index, int role) const
{
<<<<<<< HEAD
    //m_index = index;


=======
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
    if (index.row() < 0 || index.row() >= m_elementList.count())
       {
           return QVariant();
       }

      mainScreenElements element = m_elementList.at(index.row());

       if(role == 1)
       {
           return element.name;

       }
       else if(role == 2)
       {
          return  element.icon;
       }

       return QVariant();

    }


void ListModel::addEntry(const mainScreenElements element)
{
    int row = m_elementList.count();

    beginInsertRows(QModelIndex(), row,row);
<<<<<<< HEAD
    //cout << "index is " << row << endl;
    m_elementList.append(element);
    endInsertRows();
}


=======
    m_elementList.append(element);
    endInsertRows();
}
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
