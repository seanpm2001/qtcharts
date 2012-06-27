/****************************************************************************
**
** Copyright (C) 2012 Digia Plc
** All rights reserved.
** For any questions to Digia, please use contact form at http://qt.digia.com
**
** This file is part of the Qt Commercial Charts Add-on.
**
** $QT_BEGIN_LICENSE$
** Licensees holding valid Qt Commercial licenses may use this file in
** accordance with the Qt Commercial License Agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and Digia.
**
** If you have questions regarding the use of this file, please use
** contact form at http://qt.digia.com
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 1.0
import QtCommercial.Chart 1.0

ChartView {
    title: "Bar series"
    anchors.fill: parent
    theme: ChartView.ChartThemeLight
    legend.alignment: Qt.AlignBottom

    property variant series: barSeries

    BarSeries {
        id: barSeries
        name: "bar"
        axisX: CategoriesAxis { categories: ["2007", "2008", "2009", "2010", "2011", "2012" ] }
        BarSet { label: "Bob"; values: [4, 7, 3, 10, 5, 6]
            onClicked:                  console.log("barset.onClicked: " + index);
            onHovered:                  console.log("barset.onHovered: " + status);
            onPenChanged:               console.log("barset.onPenChanged: " + pen);
            onBrushChanged:             console.log("barset.onBrushChanged: " + brush);
            onLabelChanged:             console.log("barset.onLabelChanged: " + label);
            onLabelBrushChanged:        console.log("barset.onLabelBrushChanged: " + labelBrush);
            onLabelFontChanged:         console.log("barset.onLabelFontChanged: " + labelFont);
            onColorChanged:             console.log("barset.onColorChanged: " + color);
            onBorderColorChanged:       console.log("barset.onBorderColorChanged: " + color);
            onLabelColorChanged:        console.log("barset.onLabelColorChanged: " + color);
            onCountChanged:             console.log("barset.onCountChanged: " + count);
            onValuesAdded:              console.log("barset.onValuesAdded: " + index + ", " + count);
            onValuesRemoved:            console.log("barset.onValuesRemoved: " + index + ", " + count);
            onValueChanged:             console.log("barset.onValuesChanged: " + index);
        }
        BarSet { label: "Susan"; values: [5, 1, 2, 4, 1, 8] }
        BarSet { label: "James"; values: [3, 5, 8, 5, 4, 7] }

        onNameChanged:              console.log("barSeries.onNameChanged: " + series.name);
        onVisibleChanged:           console.log("barSeries.onVisibleChanged: " + series.visible);
        onClicked:                  console.log("barSeries.onClicked: " + barset + " " + index);
        onHovered:                  console.log("barSeries.onHovered: " + barset + " " + status);
        onLabelsVisibleChanged:     console.log("barSeries.onLabelsVisibleChanged: " + series.labelsVisible);
        onCountChanged:             console.log("barSeries.onCountChanged: " + count);
        onBarsetsAdded:             console.log("barSeries.onBarsetsAdded: " + sets); // There is no point in this signal on QML side
        onAdded:                    console.log("barSeries.onBarsetAdded: " + barset);
        onBarsetsRemoved:           console.log("barSeries.onBarsetsRemoved: " + sets); // There is no point in this signal on QML side
        onRemoved:                  console.log("barSeries.onBarsetRemoved: " + barset);
    }
}
