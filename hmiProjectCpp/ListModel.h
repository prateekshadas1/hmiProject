#ifndef LISTMODEL_H
#define LISTMODEL_H


#include <QAbstractListModel> // for list view
#include <QObject>
#include <QList>
#include <QModelIndex>
#include <QAbstractItemModel> // to use for grid view
<<<<<<< HEAD
=======
#include <ScreenTransitions.h>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab

  struct mainScreenElements{
          QString name;
          QUrl icon;
        };

  class ListModel:public QAbstractListModel
        {
            Q_OBJECT

    public:
      ListModel();
<<<<<<< HEAD
      //explicit ListModel(QObject *parent = nullptr);
=======
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab

         int rowCount(const QModelIndex & parent) const;
         QHash<int, QByteArray> roleNames() const;
         QVariant data(const QModelIndex &index, int role) const;
<<<<<<< HEAD
         void addEntry(const mainScreenElements element);

 int m_index;

       QList<mainScreenElements> m_elementList;

        };

#endif // LISTMODEL_H

=======

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
>>>>>>> 647df35d6b4b77f7bd84f77fbcce9e1c68f8ecab
