import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.0
import Nemo.Notifications 1.0



Page {


    objectName: "CameraPage"
    allowedOrientations: Orientation.All
    signal imageCaptured(string path)


    Camera {
            id: camera

            imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceFlash

            exposure {
                exposureCompensation: -1.0
                exposureMode: Camera.ExposurePortrait
            }

            flash.mode: Camera.FlashRedEyeReduction
            imageCapture {
                onImageCaptured: {
                    photoPreview.source = preview  // Show the preview in an Image
                }
                onImageSaved: {
                                console.debug("Image saved: "+path)

                            }
            }

        }

        VideoOutput {
            id: cam
            source: camera
            anchors.fill: parent
            focus : visible // to receive focus and capture key events when visible
        }

        Image {
            id: photoPreview
        }
        Button{

        anchors { topMargin:150; top:photoPreview.top; left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin}

        text: "Сделать фото"
        Notification {
            id: notification

            summary: "Фото Сохранено!"
            body: "Сохранено в Pictures"
        }
        onClicked: captureImage();
        }

        function captureImage() {
               camera.imageCapture.capture();
                notification.publish()
           }


}


