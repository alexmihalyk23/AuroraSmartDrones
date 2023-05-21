import QtQuick 2.0
import Sailfish.Silica 1.0


Page {


    objectName: "ShopPage"
    allowedOrientations: Orientation.All
    SilicaWebView {
                id: webView

                anchors {
                    top: parent.top
                    left: parent.left
                    right: parent.right
                    bottom: urlField.top
                }
                url: "https://startup-tv.ru/"
            }

    TextField {
           id: urlField
           anchors {
               left: parent.left
               right: parent.right
               bottom: parent.bottom
           }
           inputMethodHints: Qt.ImhUrlCharactersOnly
           text: "https://startup-tv.ru/"
           label: webView.title
           EnterKey.onClicked: {
               webView.url = text
               parent.focus = true
           }
       }
}
