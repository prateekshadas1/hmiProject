#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QObject>
#include <QQuickWindow>
#include <QFile>
#include <string>
#include <iostream>
#include <QTextStream>
#include <QDebug>
#include <ListModel.h>
#include <QQuickItem>
#include <QAbstractListModel>
#include <LoadScreen.h>

using namespace std;

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);


    QFile fileReader("C:\\Qt\\Examples\\hmiProject\\windowProperties.txt");

    int mainWindowHeight;
    int mainWindowWidth;

    if (fileReader.open(QIODevice::ReadOnly))
        {
            QTextStream in(&fileReader);
            while (!in.atEnd())
                {
                    QString text = in.readLine();
                    if (!text.isEmpty())
                        {
                            QStringList line = text.split(':');
                            mainWindowHeight = std::stoi((QString(line[0]).toStdString()));
                            mainWindowWidth = std::stoi((QString(line[1]).toStdString()));

                        }
                }
            fileReader.close();
        }


    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    QObject* qobject = engine.rootObjects().at(0);
    QQuickWindow* mainWindow = qobject_cast<QQuickWindow*>(qobject);

    mainWindow->setProperty("height", mainWindowHeight);
    mainWindow->setProperty("width", mainWindowWidth);


    ListModel model;
    LoadScreen loadScreen;


       mainScreenElements phoneButton;
       phoneButton.name = "Phone";
       phoneButton.icon = "qrc:/Images/phone1.png";
       model.addEntry(phoneButton);

       mainScreenElements radioButton;
       radioButton.name = "Radio";
       radioButton.icon = "qrc:/Images/radio1.png";
       model.addEntry(radioButton);

       mainScreenElements mediaButton;
       mediaButton.name = "Media";
       mediaButton.icon = "qrc:/Images/media.png";
       model.addEntry(mediaButton);

       mainScreenElements navigationButton;
       navigationButton.name = "Navigation";
       navigationButton.icon = "qrc:/Images/gps.png";
       model.addEntry(navigationButton);

       mainScreenElements settingsButton;
       settingsButton.name = "Settings";
       settingsButton.icon = "qrc:/Images/setting icon.png";
       model.addEntry(settingsButton);

       mainScreenElements futureButton;
       futureButton.name = "Future";
       futureButton.icon = "qrc:/Images/plus.png";
       model.addEntry(futureButton);





       QQuickItem* gridView = mainWindow->findChild<QQuickItem*>("gridView");
       gridView->setProperty("model", QVariant::fromValue(&model));
       loadScreen.setMainWindow(&engine);


           QQuickItem* homeButton = mainWindow->findChild<QQuickItem*>("refresh");

           if (homeButton != nullptr)
           {
               QObject::connect(homeButton, SIGNAL(refresh(QVariant)), &loadScreen, SLOT(onReleased(QVariant)));

           }


          else
           {
               cout << "button not found "<<endl;
           }
           cout << "connected"<<endl;

           QQuickItem* temperatureButton=mainWindow->findChild<QQuickItem*>("mainScreen");

           if(temperatureButton !=nullptr){
               QObject::connect(temperatureButton,SIGNAL(plus(QVariant)),&loadScreen,SLOT(onPlusPressed(QVariant)));

           }
       return app.exec();
}
