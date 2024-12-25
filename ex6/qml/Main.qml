import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2


ApplicationWindow {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")

    header:ToolBar{
        id:page_header
        height:40
        RowLayout{
            ToolButton{
                id:back_btn
                Text{
                    text: "<-"
                    font.pixelSize: 24
                    visible:stack_view.currentItem != page1
                    anchors.verticalCenter: parent.verticalCenter
                }
                onClicked: {
                    if (stack_view.currentItem == page2) {
                        stack_view.replace(page1, StackView.PopTransition)
                    }
                    if (stack_view.currentItem == page3) {
                        stack_view.replace(page1, StackView.PushTransition)
                    }
                }
            }
            Text{
                id:header_page_text
                font.pixelSize: 24
                leftPadding: 10
                text: {
                    if (stack_view.currentItem == page2) {
                        return "The second page"
                    }
                    if (stack_view.currentItem == page3) {
                        return "The third page"
                    }
                    return  "The first page"
                }
            }
        }
    }

    property int defMargin:10

    StackView{
        id:stack_view
        anchors.fill: parent
        initialItem: page1
    }
    My_Page {
        id:page1
        backgroundColor: "purple"
        buttonText: "To Yellow"
        button2Text: "To Cyan"
        onButtonClicked: {
            stack_view.replace(page3, StackView.PopTransition)
        }
        onButton2Clicked: {
            stack_view.replace(page2, StackView.PushTransition)
        }
    }
    My_Page {
        id:page2
        visible: false
        backgroundColor: "cyan"
        buttonText: "To Purple"
        button2Text: "To Yellow"
        onButtonClicked: {
            stack_view.replace(page1, StackView.PopTransition)
        }
        onButton2Clicked: {
            stack_view.replace(page3, StackView.PushTransition)
        }
    }
    My_Page {
        id:page3
        visible: false
        backgroundColor: "yellow"
        buttonText: "To Cyan"
        button2Text: "To Purple"
        onButtonClicked: {
            stack_view.replace(page2, StackView.PopTransition)
        }
        onButton2Clicked: {
            stack_view.replace(page1, StackView.PushTransition)
        }
    }
}
