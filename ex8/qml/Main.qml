import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Window {
    id: myWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Traffic Light")

    SwipeView {
        id: view
        currentIndex: pageIndicator.currentIndex
        orientation: Qt.Vertical
        anchors.fill: parent
        padding: 100
        MyPage {
            id: firstPage
            comText: "Purple light"
            comColor: "purple"
        }
        MyPage {
            id: secondPage
            comText: "Yellow Light"
            comColor: "yellow"
        }
        MyPage {
            id: thirdPage
            comText: "Cyan Light"
            comColor: "cyan"
        }
    }
    PageIndicator {
        id: pageIndicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
