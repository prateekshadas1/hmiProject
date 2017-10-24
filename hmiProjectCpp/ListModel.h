#ifndef LISTMODEL_H
#define LISTMODEL_H


#include <QAbstractListModel> // for list view
#include <QObject>
#include <QList>
#include <QModelIndex>
#include <QAbstractItemModel> // to use for grid view
#include <QQmlApplicationEngine>
#include <QQuickWindow>


struct mainScreenElements
{
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
        void gridElements();

    private:
        void addEntry(const mainScreenElements element);
        QList<mainScreenElements> m_elementList;

};

#endif // LISTMODEL_H
