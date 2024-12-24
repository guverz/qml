import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5


Window {
    width: 360;
    height: 640;
    visible: true;
    title: qsTr("Task_for_ListView_Model");
    property int defMargin: 8;

    Page{
        id:page;
        anchors.fill:parent;
        Rectangle {
            width: parent.width
            height: parent.height
            gradient:Gradient{
                GradientStop{position:0;color:"#d2d887"}
                GradientStop{position:1;color:"#9cbc8d"}
            }
        }

        ListView{
            id: my_list;
            anchors.fill:parent;
            model:my_model;
            delegate: MyDelegate{
                username: model.username;
                content:  model.content;
                time: model.time;
            }
        }

        ListModel {
            id: my_model;
            ListElement { username: "Guest"; content: "What's up?!"; time: "03:47"; }
        }

        footer: PageFooter {
            onNewMessage: {
                //Append new message
                var newMsg = {};
                newMsg.content = msg;
                newMsg.username = "Adress Unknown";
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }
    }
}
