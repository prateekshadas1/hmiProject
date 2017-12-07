#include "ListModel.h"
#include <iostream>


using namespace std;


ListModel::ListModel()
{
}


int ListModel::rowCount(const QModelIndex &parent) const
{
    return m_elementList.count();
}


QHash<int, QByteArray> ListModel::roleNames() const
{
    QHash<int, QByteArray> roleNames;

    roleNames [1] = "name";
    roleNames [2] = "icon"  ;
    return roleNames;
}


QVariant ListModel::data(const QModelIndex &index, int role) const
{
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
    m_elementList.append(element);
    endInsertRows();
}


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
}
