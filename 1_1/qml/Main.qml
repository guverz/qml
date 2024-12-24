import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5


Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("bow")
    color: "#a9d9d6"

    Item {
        width: 800
        height: 800

        My_Comp {
            comColor: "brown"
            anchors.left: parent.left
            anchors.top: parent.top
            comY: 200
            comX: 200
        }
        My_Comp {
            comColor: "brown"
            anchors.left: parent.left
            anchors.top: parent.top
            comX: 300
            comY: 100
        }
        My_Comp {
            comColor: "brown"
            anchors.left: parent.left
            anchors.top: parent.top
            comX: 400
            comY: 100
        }

        My_Comp {
            comColor: "brown"
            anchors.top: parent.top
            anchors.right: parent.right
            comX: -200
        }


        My_Comp {
            comColor: "brown"
            anchors.top: parent.top
            anchors.right: parent.right
            comX: -300
        }
        My_Comp {
            comColor: "white"
            anchors.top: parent.top
            anchors.right: parent.right
            comX: -200
            comY: 200
        }
        My_Comp {
            comColor: "white"
            anchors.top: parent.top
            anchors.right: parent.right
            comX: -200
            comY: 100
        }
        My_Comp {
            comColor: "white"
            anchors.top: parent.top
            anchors.right: parent.right
            comX: -200
            comY: 300
        }



        My_Comp {
            comColor: "grey"
            anchors.centerIn: parent
            comX: -300
            comY: -100
        }

        My_Comp {
            comColor: "grey"
            anchors.centerIn: parent
            comX: -300

        }
        My_Comp {
            comColor: "brown"
            anchors.centerIn: parent
            comX: -200
            comY: 100
        }
        My_Comp {
            comColor: "white"
            anchors.centerIn: parent
            comX: 200
        }


        My_Comp {
            comColor: "white"
            anchors.centerIn: parent
            comX: 200
            comY: 100
        }
        My_Comp {
            comColor: "brown"
            anchors.centerIn: parent
            comX: -100
            comY: 200
        }
        My_Comp {
            comColor: "brown"
            anchors.centerIn: parent
            comX: 0
            comY: 200
        }
        My_Comp {
            comColor: "brown"
            anchors.centerIn: parent
            comX: 100
            comY: 300
        }


        My_Comp {
            comColor: "white"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            comX: -200
            comY: -200
        }
        My_Comp {
            comColor: "brown"
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            comX: -200
            comY: -100
        }

    }
}

