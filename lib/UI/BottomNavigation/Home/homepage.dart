// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_bucket/Theme/colors.dart';
import 'package:food_bucket/UI/components/commonAppbar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TooltipBehavior? _tooltipBehavior;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tooltipBehavior = TooltipBehavior(enable: true);
  }

  final List<ChartData> chartData = [
    ChartData('Dine', 37.04, "Dine\n 37.04%", chartDataBlue),
    ChartData('Takeaway', 33.33, "Takeaway\n 33.33%", chartDataOrange),
    ChartData('Deliver', 29.63, "Deliver\n 29.63%", chartDataPurple),
  ];
  final List<ChartData> chartData1 = [
    ChartData('New', 52.63, "New\n 52.63%", chartDataBlue),
    ChartData('Returning', 47.37, "Returning\n 47.37%", chartDataSkyblue),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CommonAppbar(),
      backgroundColor: backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: primarycolor,
              height: 30,
              width: size.width,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "DAY IS ACTIVE",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TODAY'S SUMMERY",
                          style: TextStyle(
                            color: textcolor,
                          ),
                        ),
                        Text(
                          "4th March,2022",
                          style: TextStyle(
                            color: textcolor,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 2,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 20, 0, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SALES",
                              style: TextStyle(
                                color: textcolor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "RS 56,000",
                              style: TextStyle(
                                  color: primarycolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ORDERS",
                                      style: TextStyle(
                                        color: textcolor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "67",
                                      style: TextStyle(
                                          color: textcolor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "EXPENSE",
                                      style: TextStyle(
                                        color: textcolor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "RS 56700",
                                      style: TextStyle(
                                          color: textcolor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ],
                                ),
                                SizedBox(),
                                SizedBox(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "LAST 7 DAYS",
                              style: TextStyle(
                                color: textcolor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: size.width * 0.45,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "SALES",
                                      style: TextStyle(
                                        color: textcolor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "RS 56,000",
                                      style: TextStyle(
                                          color: primarycolor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "ORDERS",
                                      style: TextStyle(
                                        color: textcolor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "67",
                                      style: TextStyle(
                                          color: textcolor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "LAST 30 DAYS",
                              style: TextStyle(
                                color: textcolor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            // height: size.width * 0.45,
                            width: size.width * 0.45,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "SALES",
                                      style: TextStyle(
                                        color: textcolor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    FittedBox(
                                      child: Text("RS 56,000",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5
                                              ?.copyWith(
                                                  color: primarycolor,
                                                  fontWeight: FontWeight.bold)),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "ORDERS",
                                      style: TextStyle(
                                        color: textcolor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "67",
                                      style: TextStyle(
                                          color: textcolor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      "LAST 30 DAYS GRAPH",
                      style: TextStyle(
                        color: textcolor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      width: size.width * 0.9,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SfCartesianChart(
                            primaryXAxis: NumericAxis(
                                anchorRangeToVisiblePoints: true, interval: 1),
                            primaryYAxis: NumericAxis(interval: 10),
                            // Chart title
                            // title:
                            //     ChartTitle(text: 'Half yearly sales analysis'),
                            // Enable legend

                            // Enable tooltip
                             
                            // tooltipBehavior: _tooltipBehavior,
                            series: <AreaSeries<SalesData, int>>[
                              AreaSeries<SalesData, int>(
                                  markerSettings: MarkerSettings(
                                      isVisible: true, borderColor: bluecolor),
                                  color: graphCoverColor,
                                  borderColor: bluecolor,
                                  borderWidth: 3,
                                  dataSource: <SalesData>[
                                    SalesData(14, 20),
                                    SalesData(15, 25),
                                    SalesData(16, 22),
                                    SalesData(17, 28),
                                    SalesData(18, 21),
                                    SalesData(19, 30)
                                  ],
                                  xValueMapper: (SalesData sales, _) =>
                                      sales.year,
                                  yValueMapper: (SalesData sales, _) =>
                                      sales.sales,
                                  // Enable data label
                                  dataLabelSettings:
                                      DataLabelSettings(isVisible: false))
                            ]),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "ORDER TYPE",
                              style: TextStyle(
                                color: textcolor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: size.width * 0.45,
                              width: size.width * 0.45,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:
                                      SfCircularChart(series: <CircularSeries>[
                                    // Render pie chart
                                    DoughnutSeries<ChartData, String>(
                                        dataSource: chartData,
                                        // in nerRadius: '50%',
                                        radius: "100%",
                                        pointColorMapper: (ChartData data, _) =>
                                            data.color,
                                        xValueMapper: (ChartData data, _) =>
                                            data.x,
                                        yValueMapper: (ChartData data, _) =>
                                            data.y,
                                        dataLabelMapper: (ChartData data, _) =>
                                            data.text,
                                        dataLabelSettings: DataLabelSettings(
                                          isVisible: true,
                                          overflowMode: OverflowMode.none,
                                          // color: blackcolor
                                          textStyle: TextStyle(
                                              color: blackcolor,
                                              fontWeight: FontWeight.bold),
                                          // alignment: ChartAlignment.near,
                                        )),
                                  ])))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "NEW vs RETURNING",
                              style: TextStyle(
                                color: textcolor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: size.width * 0.45,
                            width: size.width * 0.45,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: SfCircularChart(series: <CircularSeries>[
                                  // Render pie chart
                                  DoughnutSeries<ChartData, String>(
                                      dataSource: chartData1,
                                      // innerRadius: '50%',
                                      radius: "100%",
                                      pointColorMapper: (ChartData data, _) =>
                                          data.color,
                                      xValueMapper: (ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (ChartData data, _) =>
                                          data.y,
                                      dataLabelMapper: (ChartData data, _) =>
                                          data.text,
                                      dataLabelSettings: DataLabelSettings(
                                        isVisible: true,
                                        overflowMode: OverflowMode.none,
                                        // color: blackcolor
                                        textStyle: TextStyle(
                                            color: blackcolor,
                                            fontWeight: FontWeight.bold),
                                        // alignment: ChartAlignment.near,
                                      )),
                                ])),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final int year;
  final double sales;
}

class ChartData {
  ChartData(this.x, this.y, this.text, this.color);
  final String x;
  final double y;
  final Color? color;
  final String? text;
}
