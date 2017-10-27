#ifndef ROOTWINDOW_H
#define ROOTWINDOW_H

#include <QObject>

class RootWindow : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int height  READ getHeight WRITE setHeight NOTIFY heightChanged)
    Q_PROPERTY(int width  READ getWidth WRITE setWidth NOTIFY widthChanged)

public:
    explicit RootWindow(QObject *parent = nullptr);
    int getHeight()
    {
        return m_height;
    }
    int getWidth()
    {
        return m_width;
    }
    void setHeight(int value){
        m_height = value;
        emit heightChanged();
    }
    void setWidth(int value)
    {
        m_width = value;
        emit widthChanged();
    }


signals:
    void widthChanged();
    void heightChanged();

public slots:

private:
    int m_height;
    int m_width;
};

#endif // ROOTWINDOW_H
