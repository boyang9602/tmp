{
    "org.jfree.chart.plot.Plot": [
        {
            "fillBackground(java.awt.Graphics2D, java.awt.geom.Rectangle2D, org.jfree.chart.plot.PlotOrientation)": [
                {
                    "ENTER": [
                        {
                            "Patch93.inv.output": {
                                "invs": [
                                    "orientation has only one value",
                                    "orientation.name.toString == \"PlotOrientation.VERTICAL\"",
                                    "orientation.name has only one value"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": [
                                    "orientation.name.toString one of { \"PlotOrientation.HORIZONTAL\", \"PlotOrientation.VERTICAL\" }"
                                ]
                            }
                        }
                    ]
                },
                {
                    "EXIT": [
                        {
                            "Patch93.inv.output": {
                                "invs": [
                                    "orientation.name.toString == \"PlotOrientation.VERTICAL\"",
                                    "orientation.name has only one value"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": [
                                    "orientation.name.toString one of { \"PlotOrientation.HORIZONTAL\", \"PlotOrientation.VERTICAL\" }"
                                ]
                            }
                        }
                    ]
                },
                {
                    "EXITNN": [
                        {
                            "992": [
                                {
                                    "Patch93.inv.output": {
                                        "invs": []
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
        },
        {
            "resolveRangeAxisLocation(org.jfree.chart.axis.AxisLocation, org.jfree.chart.plot.PlotOrientation)": [
                {
                    "ENTER": [
                        {
                            "Patch93.inv.output": {
                                "invs": [
                                    "location.name has only one value",
                                    "location.name.toString == \"AxisLocation.BOTTOM_OR_LEFT\"",
                                    "orientation.name.toString == \"PlotOrientation.VERTICAL\"",
                                    "location has only one value",
                                    "orientation has only one value",
                                    "orientation.name has only one value"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": [
                                    "location.name.toString one of { \"AxisLocation.BOTTOM_OR_LEFT\", \"AxisLocation.TOP_OR_LEFT\" }",
                                    "orientation.name.toString one of { \"PlotOrientation.HORIZONTAL\", \"PlotOrientation.VERTICAL\" }"
                                ]
                            }
                        }
                    ]
                },
                {
                    "EXIT": [
                        {
                            "Patch93.inv.output": {
                                "invs": [
                                    "location.name has only one value",
                                    "location.name.toString == \"AxisLocation.BOTTOM_OR_LEFT\"",
                                    "orientation.name.toString == \"PlotOrientation.VERTICAL\"",
                                    "return.name has only one value",
                                    "return.name.toString == \"RectangleEdge.LEFT\"",
                                    "return has only one value",
                                    "orientation.name has only one value"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": [
                                    "location.name.toString one of { \"AxisLocation.BOTTOM_OR_LEFT\", \"AxisLocation.TOP_OR_LEFT\" }",
                                    "return.name.toString one of { \"RectangleEdge.LEFT\", \"RectangleEdge.TOP\" }",
                                    "orientation.name.toString one of { \"PlotOrientation.HORIZONTAL\", \"PlotOrientation.VERTICAL\" }"
                                ]
                            }
                        }
                    ]
                }
            ]
        },
        {
            "resolveDomainAxisLocation(org.jfree.chart.axis.AxisLocation, org.jfree.chart.plot.PlotOrientation)": [
                {
                    "ENTER": [
                        {
                            "Patch93.inv.output": {
                                "invs": [
                                    "orientation has only one value",
                                    "orientation.name.toString == \"PlotOrientation.VERTICAL\"",
                                    "orientation.name has only one value"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": [
                                    "orientation.name.toString one of { \"PlotOrientation.HORIZONTAL\", \"PlotOrientation.VERTICAL\" }"
                                ]
                            }
                        }
                    ]
                },
                {
                    "EXIT": [
                        {
                            "Patch93.inv.output": {
                                "invs": [
                                    "return.name.toString == \"RectangleEdge.BOTTOM\"",
                                    "orientation.name.toString == \"PlotOrientation.VERTICAL\"",
                                    "return.name has only one value",
                                    "return has only one value",
                                    "orientation.name has only one value"
                                ]
                            }
                        },
                        {
                            "b.inv.output": {
                                "invs": [
                                    "return.name.toString one of { \"RectangleEdge.BOTTOM\", \"RectangleEdge.LEFT\" }",
                                    "orientation.name.toString one of { \"PlotOrientation.HORIZONTAL\", \"PlotOrientation.VERTICAL\" }"
                                ]
                            }
                        }
                    ]
                }
            ]
        }
    ]
}