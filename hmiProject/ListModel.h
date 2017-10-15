#ifndef LISTMODEL_H
#define LISTMODEL_H


#include <QAbstractListModel> // for list view
#include <QObject>
#include <QList>
#include <QModelIndex>
#include <QAbstractItemModel> // to use for grid view

  struct mainScreenElements{
          QString name;
          QUrl icon;
        };

  class ListModel:public QAbstractListModel
        {
            Q_OBJECT

    public:
      ListModel();

     // explicit ListModel(QObject *parent = 0);

         int rowCount(const QModelIndex & parent) const;
       virtual   QHash<int, QByteArray> roleNames() const;
        virtual  QVariant data(const QModelIndex &index, int role=Qt::DisplayRole) const;
         void addEntry(const mainScreenElements element);

    private:
       QList<mainScreenElements> m_elementList;
        };

#endif // LISTMODEL_H

