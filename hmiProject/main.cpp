#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <ListModel.h>
#include <qqmlcontext.h>
#include <qqml.h>
#include <QtQuick/qquickitem.h>
#include <QtQuick/qquickview.h>
#include <QQuickItem>
#include <QQuickWindow>
#include <QAbstractListModel>
#include <QMetaType>




int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    ListModel* model = new ListModel();

    mainScreenElements radioButton;
    radioButton.name = "Radio";
    radioButton.icon = "C:\\Users\\alekh\\Desktop\\phone icon.png";

    model->addEntry(radioButton);

    mainScreenElements mediaButton;
    mediaButton.name = "Media";
    mediaButton.icon = "radio.png";

    model->addEntry(mediaButton);

    mainScreenElements phoneButton;
    phoneButton.name = "Phone";
    phoneButton.icon = "radio.png";

    model->addEntry(phoneButton);

    QObject *object = engine.rootObjects().at(0);
    QQuickWindow* mainWindow = qobject_cast <QQuickWindow*> (object);

    QQuickItem* appModel = mainWindow->findChild<QQuickItem*>("appModel");
    appModel->setProperty("model", QVariant::fromValue(&model));

//    QQuickView view;
//       QQmlContext *ctxt = view.rootContext();
//       ctxt->setContextProperty("appModel", QVariant::fromValue(&model));

       return app.exec();
}
