// Copyright (C) 2024 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

import QtQuick
import QtQuick.Templates as T
import QtQuick.Controls.impl
import QtQuick.Controls.FluentWinUI3.impl

T.CheckDelegate {
    id: control

    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding,
                             implicitIndicatorHeight + topPadding + bottomPadding)

    spacing: 10

    topPadding: config.topPadding || 0 + verticalOffset
    leftPadding: config.leftPadding || 0 + __horizontalOffset
    rightPadding: config.rightPadding || 0 + __horizontalOffset
    bottomPadding: config.bottomPadding || 0 + __verticalOffset

    icon.width: 16
    icon.height: 16
    icon.color: control.down ? __pressedText : control.palette.buttonText

    readonly property int __horizontalOffset: 4
    readonly property int __verticalOffset: 2

    readonly property color __pressedText: Application.styleHints.colorScheme == Qt.Light
                                                ? Qt.rgba(control.palette.buttonText.r, control.palette.buttonText.g, control.palette.buttonText.b, 0.62)
                                                : Qt.rgba(control.palette.buttonText.r, control.palette.buttonText.g, control.palette.buttonText.b, 0.7725)

    readonly property string __currentState: [
        !control.enabled && "disabled",
        control.highlighted && "highlighted",
        control.enabled && !control.down && control.hovered && "hovered",
        control.down && "pressed"
    ].filter(Boolean).join("_") || "normal"
    readonly property var config: Config.controls.itemdelegate[__currentState] || {}

    readonly property Item __focusFrameTarget: control

    indicator: CheckIndicator {
        readonly property string currentState: [
            control.checkState === Qt.Checked && "checked",
            !control.enabled && control.checkState !== Qt.Unchecked && "disabled",
            control.enabled && control.checkState !== Qt.Unchecked && !control.down && control.hovered && "hovered",
            control.checkState === Qt.PartiallyChecked && "partiallyChecked",
            control.checkState !== Qt.Unchecked && control.down && "pressed",
        ].filter(Boolean).join("_") || "normal"
        readonly property var config: Config.controls.checkbox[currentState] || {}

        x: control.text ? (control.mirrored ? control.leftPadding : control.width - width - control.rightPadding) : control.leftPadding + (control.availableWidth - width) / 2
        y: control.topPadding + (control.availableHeight - height) / 2
        control: control
        filePath: Qt.resolvedUrl(config.indicator.filePath)
    }

    contentItem: IconLabel {
        leftPadding: !control.mirrored ? 0 : control.indicator.width + control.spacing
        rightPadding: control.mirrored ? 0 : control.indicator.width + control.spacing

        spacing: control.spacing
        mirrored: control.mirrored
        display: control.display
        alignment: control.display === IconLabel.IconOnly || control.display === IconLabel.TextUnderIcon ? Qt.AlignCenter : Qt.AlignLeft
        icon: control.icon
        text: control.text
        font: control.font
        color: control.icon.color
    }

    background: Item {
        implicitWidth: 160
        implicitHeight: 40

        property Item backgroundImage: StyleImage {
            parent: control.background
            imageConfig: control.config.background
            implicitWidth: parent.width - control.__horizontalOffset * 2
            implicitHeight: parent.height - control.__verticalOffset * 2
            x: control.__horizontalOffset
            y: control.__verticalOffset
        }
    }
}