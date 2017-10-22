#include "ListModel.h"
#include <iostream>

using namespace std;

ListModel::ListModel(){
    m_index = 0;

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
    //m_index = index;


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
    //cout << "index is " << row << endl;
    m_elementList.append(element);
    endInsertRows();
}


