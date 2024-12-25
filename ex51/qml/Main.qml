import QtQuick 2.15
import QtQuick.Controls 2.15


Window {
    visible: true;
    width: 400;
    height: 600;
    title: qsTr("Changing states");

    Rectangle {
        anchors.centerIn: parent;
        width: 300;
        height: 400;
        color: "#d3d3d3";
        Column {
            anchors.centerIn: parent;
            spacing: 10;

            Light {
                id: rect_purple;
            }

            Light {
                id: rect_yellow;
                color: "yellow";
            }

            Light {
                id: rect_cyan;
                color: "cyan";
            }
        }

        states:[
            State {
                name: "stop";
                PropertyChanges {target: rect_purple; color: "purple";}
                PropertyChanges {target:rect_yellow; color: "black";}
                PropertyChanges {target:rect_cyan; color: "black";}
            },
            State {
                name: "caution";
                PropertyChanges {target: rect_purple; color: "black";}
                PropertyChanges {target:rect_yellow; color: "yellow";}
                PropertyChanges {target:rect_cyan; color: "black";}
            },
            State {
                name: "go";
                PropertyChanges {target: rect_purple; color: "black";}
                PropertyChanges {target:rect_yellow; color: "black";}
                PropertyChanges {target:rect_cyan; color: "cyan";}
            } ]

        transitions:[
            Transition {
                ColorAnimation { duration: 1000; }
                from: "stop";
                to: "caution";},
            Transition {
                ColorAnimation { duration: 1000; }
                from: "caution";
                to: "go";},
            Transition {
                ColorAnimation { duration: 1000; }
                from: "go";
                to: "stop";}
        ]

        state:"stop";

        MouseArea{
            anchors.fill:parent
            onClicked: {
                if (parent.state === "stop") {
                    parent.state = "caution";
                } else if (parent.state === "caution") {
                    parent.state = "go";
                } else {
                    parent.state = "stop";
                }
            }
        }
    }
}
