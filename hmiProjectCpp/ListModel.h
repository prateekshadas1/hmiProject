#ifndef LISTMODEL_H
#define LISTMODEL_H


#include <QAbstractListModel> // for list view
#include <QObject>
#include <QList>
#include <QModelIndex>
#include <QAbstractItemModel> // to use for grid view
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include <ScreenTransitions.h>

  struct mainScreenElements{
          QString name;
          QUrl icon;
        };

  class ListModel:public QAbstractListModel
        {
            Q_OBJECT

    public:
      ListModel();
      //explicit ListModel(QObject *parent = nullptr);

         int rowCount(const QModelIndex & parent) const;
         QHash<int, QByteArray> roleNames() const;
         QVariant data(const QModelIndex &index, int role) const;
         void addEntry(const mainScreenElements element);
         void setEngine(QQmlApplicationEngine *engine);
         void setWindow(QQuickWindow* window);
         void gridElements();
         ScreenTransitions screenTransitions2;

 int m_index;

       QList<mainScreenElements> m_elementList;
       QQuickWindow* m_window;
      QQmlApplicationEngine* m_engine;
      QQuickItem* MainScreenRootItem;
      QQuickItem* gridView;
  public slots:
      void onRefresh(QVariant value);

        };

#endif // LISTMODEL_H

