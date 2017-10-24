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

         int rowCount(const QModelIndex & parent) const;
         QHash<int, QByteArray> roleNames() const;
         QVariant data(const QModelIndex &index, int role) const;

         void addEntry(const mainScreenElements element);

    private:
       QList<mainScreenElements> m_elementList;
        };

#endif // LISTMODEL_H
