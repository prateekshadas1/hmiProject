#ifndef LISTMODEL_H
#define LISTMODEL_H


#include <QAbstractListModel> // for list view
#include <QObject>
#include <QList>
#include <QModelIndex>
#include <QAbstractItemModel> // to use for grid view
#include <ScreenTransitions.h>
#include <QQmlApplicationEngine>
#include <QQuickWindow>

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
         int m_index;
         void setEngine(QQmlApplicationEngine *engine);
         void setWindow(QQuickWindow *window);

         void gridElements();
         ScreenTransitions screenTransitions2;
          QQuickWindow* m_window;
          QQmlApplicationEngine* m_engine;

       QList<mainScreenElements> m_elementList;
        };

#endif // LISTMODEL_H
