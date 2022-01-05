import 'package:animate_do/animate_do.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  final List<FlSpot> _daylySpots = const [
    FlSpot(0, 20.0),
    FlSpot(1, 20.0),
    FlSpot(2, 30.0),
    FlSpot(3, 10.0),
    FlSpot(4, 40.0),
    FlSpot(5, 60.0),
    FlSpot(6, 40.0),
    FlSpot(7, 80.0),
    FlSpot(8, 60.0),
    FlSpot(9, 70.0),
    FlSpot(10, 50.0),
    FlSpot(11, 100.0),
    FlSpot(12, 70.0),
    FlSpot(13, 80.0),
    FlSpot(14, 60.0),
    FlSpot(15, 70.0),
    FlSpot(25, 10.0),
    FlSpot(26, 50.0),
  ];

  // ignore: prefer_final_fields
  List<FlSpot> _monthlySpots = const [
    FlSpot(0, 110.0),
    FlSpot(1, 110.0),
    FlSpot(5, 160.0),
    FlSpot(6, 190.0),
    FlSpot(7, 150.0),
  ];

  final int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeheigh = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey[850],
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
          FadeInUp(
            duration: const Duration(milliseconds: 1000),
            from: 80,
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: LineChart(
                  mainData(),
                  swapAnimationCurve: Curves.easeInOutCubic,
                  swapAnimationDuration: const Duration(milliseconds: 2000),
                )),
          ),
          FadeInUp(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(9),
                      width: sizeWidth * 0.012,
                      height: sizeheigh * 0.06,
                      color: Colors.orange[500],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "RedPay Credit",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          "**** **** 1212",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      "\$1.571,49",
                      style:
                          TextStyle(fontSize: 25, color: Colors.grey.shade300),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                Divider(
                  indent: 50,
                  endIndent: 50,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.15),
                ),
              ],
            ),
          ),
          FadeInUp(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(9),
                      width: sizeWidth * 0.012,
                      height: sizeheigh * 0.06,
                      color: Colors.red[500],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Rent",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          "**** **** 1818",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      "\$9.571,49",
                      style:
                          TextStyle(fontSize: 25, color: Colors.grey.shade300),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                Divider(
                  indent: 50,
                  endIndent: 50,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.15),
                ),
              ],
            ),
          ),
          FadeInUp(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(9),
                      width: sizeWidth * 0.012,
                      height: sizeheigh * 0.06,
                      color: Colors.red[900],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Tab Fine Credit",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          "**** **** 2589",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      "\$571,49",
                      style:
                          TextStyle(fontSize: 25, color: Colors.grey.shade300),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                Divider(
                  indent: 50,
                  endIndent: 50,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.15),
                ),
              ],
            ),
          ),
          FadeInUp(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(9),
                      width: sizeWidth * 0.012,
                      height: sizeheigh * 0.06,
                      color: Colors.orange[900],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "ABC Loans",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          "**** **** 5678",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        ),
                      ],
                    ),
                    Text(
                      "\$8.571,49",
                      style:
                          TextStyle(fontSize: 25, color: Colors.grey.shade300),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                Divider(
                  indent: 50,
                  endIndent: 50,
                  thickness: 1,
                  color: Colors.black.withOpacity(0.15),
                ),
              ],
            ),
          ),
        ]));
  }

  // Charts Data
  List<Color> gradientColors = [
    Colors.orange.shade400,
    Colors.red.shade900,
  ];

  LineChartData mainData() {
    return LineChartData(
      borderData: FlBorderData(
        show: false,
      ),
      gridData: FlGridData(
          show: false, horizontalInterval: 1.6, drawVerticalLine: true),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: false,
          reservedSize: 22,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
              color: Color(0xff68737d),
              fontWeight: FontWeight.bold,
              fontSize: 8),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'JAN';
              case 2:
                return 'FEB';
              case 3:
                return 'MAR';
              case 4:
                return 'APR';
              case 5:
                return 'MAY';
              case 6:
                return 'JUN';
              case 7:
                return 'JUL';
              case 8:
                return 'AUG';
              case 9:
                return 'SEP';
              case 10:
                return 'OCT';
              case 11:
                return 'NOV';
              case 12:
                return 'DEC';
            }
            return '';
          },
          margin: 10,
        ),
        leftTitles: SideTitles(
          showTitles: false,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
        ),
      ),
      lineTouchData: LineTouchData(
        getTouchedSpotIndicator:
            (LineChartBarData barData, List<int> spotIndexes) {
          return spotIndexes.map((index) {
            return TouchedSpotIndicatorData(
              FlLine(
                color: Colors.white.withOpacity(0.1),
                strokeWidth: 2,
                dashArray: [3, 3],
              ),
              FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) =>
                    FlDotCirclePainter(
                  radius: 8,
                  color: [
                    Colors.black,
                    Colors.black,
                  ][index],
                  strokeWidth: 3,
                  strokeColor: Colors.black,
                ),
              ),
            );
          }).toList();
        },
      ),
      lineBarsData: [
        LineChartBarData(
          spots: _currentIndex == 2
              ? _daylySpots
              : _currentIndex == 1
                  ? _monthlySpots
                  : _daylySpots,
          isCurved: true,
          colors: gradientColors,
          barWidth: 2,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
              show: true,
              gradientFrom: const Offset(1, 0),
              gradientTo: const Offset(0, 3),
              colors: [
                Colors.red.withOpacity(0.1),
                Colors.red.shade800.withOpacity(0),
              ]),
        )
      ],
    );
  }
}
