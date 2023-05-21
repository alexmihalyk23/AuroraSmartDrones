//#include "facedetector.h"
//QImage FaceDetector::detect(Mat frame)
//{
//    Mat frame_gray;
//    cvtColor(frame, frame_gray, COLOR_BGR2GRAY);
//    equalizeHist(frame_gray, frame_gray);

//    //Detection
//    face_cascade.detectMultiScale(frame_gray,
//                                  foundFaces,
//                                   1.1, 2, 0|CASCADE_SCALE_IMAGE, Size(100, 100));

//    int n = foundFaces.size();
//    //Draw rectangles around faces
////    CvRect rect;
////    for(int i = 0; i < n ; i++)
////    {
////        rect = foundFaces[i];
////        rectangle(frame, cvPoint(rect.x, rect.y),
////                    cvPoint((rect.x + rect.width), (rect.y + rect.height)),
////                    (255,0,255)));
////    }

//    // Convert Mat to QImage
//    QImage result = QImage((const uchar *)frame.data,
//                                          frame.cols,
//                                          frame.rows,
//                                          frame.step,
//                                          QImage::Format_RGB888).rgbSwapped();
//    return result;
//}


//#include <opencv2/core.hpp>
//#include <opencv2/imgcodecs.hpp>
//#include <opencv2/highgui.hpp>
//#include <QtQuick>

//#include <iostream>
//using namespace cv;
//QImage recognizing()
//{
//    std::string image_path = samples::findFile("starry_night.jpg");
//    Mat img = imread(image_path, IMREAD_COLOR);
//    if(img.empty())
//    {
//        std::cout << "Could not read the image: " << image_path << std::endl;

//    }
//    imwrite("starry_night.png", img);

//}
