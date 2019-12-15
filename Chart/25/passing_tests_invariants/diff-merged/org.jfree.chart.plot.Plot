{
    "org.jfree.chart.plot.Plot": [
        {
            "getParent()": [
                {
                    "ENTER": [
                        {
                            "Patch15.inv.output": {
                                "invs": [
                                    "org.jfree.chart.plot.Plot.class$org$jfree$chart$event$PlotChangeListener == null"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": []
                            }
                        }
                    ]
                },
                {
                    "EXIT": [
                        {
                            "Patch15.inv.output": {
                                "invs": [
                                    "org.jfree.chart.plot.Plot.class$org$jfree$chart$event$PlotChangeListener == null"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": []
                            }
                        }
                    ]
                }
            ]
        },
        {
            "resolveRangeAxisLocation(org.jfree.chart.axis.AxisLocation, org.jfree.chart.plot.PlotOrientation)": [
                {
                    "ENTER": [
                        {
                            "Patch15.inv.output": {
                                "invs": [
                                    "org.jfree.chart.axis.AxisLocation.BOTTOM_OR_RIGHT.name != null",
                                    "org.jfree.chart.axis.AxisLocation.BOTTOM_OR_LEFT != null",
                                    "location.name != null",
                                    "org.jfree.chart.axis.AxisLocation.TOP_OR_LEFT != null",
                                    "org.jfree.chart.plot.PlotOrientation.HORIZONTAL != null",
                                    "org.jfree.chart.axis.AxisLocation.TOP_OR_RIGHT.name != null",
                                    "org.jfree.chart.plot.PlotOrientation.HORIZONTAL.name != null",
                                    "org.jfree.chart.axis.AxisLocation.BOTTOM_OR_RIGHT != null",
                                    "org.jfree.chart.axis.AxisLocation.TOP_OR_LEFT.name != null",
                                    "org.jfree.chart.plot.PlotOrientation.VERTICAL.name != null",
                                    "orientation.name != null",
                                    "org.jfree.chart.plot.PlotOrientation.VERTICAL != null",
                                    "orientation != null",
                                    "location != null",
                                    "org.jfree.chart.axis.AxisLocation.TOP_OR_RIGHT != null",
                                    "org.jfree.chart.plot.Plot.class$org$jfree$chart$event$PlotChangeListener != null",
                                    "org.jfree.chart.axis.AxisLocation.BOTTOM_OR_LEFT.name != null"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": []
                            }
                        }
                    ]
                },
                {
                    "EXIT": [
                        {
                            "Patch15.inv.output": {
                                "invs": [
                                    "org.jfree.chart.plot.PlotOrientation.HORIZONTAL != null",
                                    "org.jfree.chart.util.RectangleEdge.TOP != null",
                                    "org.jfree.chart.util.RectangleEdge.RIGHT.name != null",
                                    "org.jfree.chart.axis.AxisLocation.BOTTOM_OR_RIGHT.name != null",
                                    "org.jfree.chart.axis.AxisLocation.TOP_OR_RIGHT.name != null",
                                    "org.jfree.chart.plot.PlotOrientation.VERTICAL.name != null",
                                    "org.jfree.chart.util.RectangleEdge.LEFT.name != null",
                                    "org.jfree.chart.util.RectangleEdge.BOTTOM != null",
                                    "org.jfree.chart.util.RectangleEdge.LEFT != null",
                                    "return != null",
                                    "org.jfree.chart.axis.AxisLocation.BOTTOM_OR_LEFT.name != null",
                                    "org.jfree.chart.axis.AxisLocation.TOP_OR_LEFT != null",
                                    "org.jfree.chart.plot.PlotOrientation.VERTICAL != null",
                                    "org.jfree.chart.util.RectangleEdge.TOP.name != null",
                                    "return.name != null",
                                    "org.jfree.chart.axis.AxisLocation.TOP_OR_LEFT.name != null",
                                    "org.jfree.chart.axis.AxisLocation.TOP_OR_RIGHT != null",
                                    "org.jfree.chart.plot.Plot.class$org$jfree$chart$event$PlotChangeListener != null",
                                    "org.jfree.chart.axis.AxisLocation.BOTTOM_OR_LEFT != null",
                                    "location.name != null",
                                    "org.jfree.chart.axis.AxisLocation.BOTTOM_OR_RIGHT != null",
                                    "org.jfree.chart.plot.PlotOrientation.HORIZONTAL.name != null",
                                    "org.jfree.chart.util.RectangleEdge.RIGHT != null",
                                    "orientation.name != null",
                                    "org.jfree.chart.util.RectangleEdge.BOTTOM.name != null"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": []
                            }
                        }
                    ]
                }
            ]
        }
    ]
}