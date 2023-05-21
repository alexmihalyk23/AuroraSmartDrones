import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.0


Page {


    objectName: "RecognizePage"
    allowedOrientations: Orientation.All


    Button{
        id: main
        anchors {topMargin: 100; top: parent.top; left: parent.left; right: parent.right; margins: Theme.horizontalPageMargin }
        text: "Распознать"
    }
    Image {
        id: image
        anchors {topMargin: 100; leftMargin: 100; rightMargin: 100; top: main.top; margins: Theme.horizontalPageMargin}
        source: "../icons/SmartDrones.svg"
    }
}
