//#ifndef IMAGESAVER_H
//#define IMAGESAVER_H
//#include <QObject>
//#include <QWidget>


//class ImageSaver : public QObject
//{
//Q_OBJECT
//public:
//explicit ImageSaver(QObject *parent = 0);

//public slots:
//void save(QObject *item, const QString &path);

//};

//void ImageSaver::save(QObject *imageObj, const QString &path)
//{
//QGraphicsObject item = qobject_cast<QGraphicsObject>(imageObj);

//if (!item) {
//    qDebug() << "Item is NULL";
//    return;
//}

//QImage img(item->boundingRect().size().toSize(), QImage::Format_RGB32);
//img.fill(QColor(255, 255, 255).rgb());
//QPainter painter(&img);
//QStyleOptionGraphicsItem styleOption;
//item->paint(&painter, &styleOption);
//img.save(path);
//}

//#endif // IMAGESAVER_H
