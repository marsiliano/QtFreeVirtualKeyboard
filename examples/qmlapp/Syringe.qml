import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import "."

Item {
    id: root
    implicitHeight: syringeImage.height

    Image {
        id: syringeImage
        source: "syringe2.svg"
        fillMode: Image.PreserveAspectFit
        width: parent.width
        z: 100
    }

    ProgressBar {
        id: progressBar
        anchors.left: parent.left
        anchors.leftMargin: 70
        anchors.right: parent.right
        anchors.rightMargin: 70
        anchors.verticalCenter: parent.verticalCenter
        height: 80
        minimumValue: 0
        maximumValue: 100
        value: 70
        style: syringeProgressBarStyle
        z: 0
    }

    Component {
        id: syringeProgressBarStyle
        ProgressBarStyle {
            background: Rectangle {
                color: "#00FFFFFF"
                border.color: "transparent"
                border.width: 0
                implicitWidth: 200
                implicitHeight: 24
            }
            progress: Rectangle {
                color: "#5caa15"
            }
        }
    }
}
