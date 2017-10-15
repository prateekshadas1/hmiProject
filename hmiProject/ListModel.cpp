#include "ListModel.h"

ListModel::ListModel()
{
    m_elementList.clear();
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
    mainScreenElements element = m_elementList.at(index);

    if(role == 1)
    {
        return element.name;
    }
    else if (role == 2)
    {
        return element.icon;
    }
}


void ListModel::addEntry(const mainScreenElements element)
{
    int row = m_elementList.count();
    beginInsertRows(QModelIndex(), row,row);
    m_elementList.append(element);
    endInsertRows();
}

