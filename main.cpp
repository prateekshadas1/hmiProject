#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QObject>
#include <QQuickWindow>
#include <QFile>
#include <string>
#include <iostream>
#include <QTextStream>
#include <QDebug>


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

    return app.exec();
}
