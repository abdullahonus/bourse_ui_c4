// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

bool _isLoaded = true;

class _TabPageState extends State<TabPage> {
  final int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    // make _isLoaded true after 2 seconds
    Future.delayed(const Duration(seconds: 7000), () {
      setState(() {
        _isLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Deposit"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.grey[800],
      body: ListView(
        children: [
          FadeInUp(
            duration: Duration(milliseconds: 3000),
            child: SizedBox(
              width: double.infinity,
              height: 250,
              child: LineChart(
                mainData(),
                swapAnimationDuration: Duration(milliseconds: 200), // Optional
                swapAnimationCurve: Curves.linear, // Optional
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
            width: 20,
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Genoe",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "24.01.2022",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  "-\$16,89",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            thickness: 1,
            color: Colors.black.withOpacity(0.15),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
            width: 20,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "FornNightly Subscribe",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "02.12.2021",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  "-\$6,99",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            thickness: 1,
            color: Colors.black.withOpacity(0.15),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
            width: 20,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Circle Cash",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "10.11.2021",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  "\$367,12",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            thickness: 1,
            color: Colors.black.withOpacity(0.15),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
            width: 20,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Countrol4 Subscribe",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "18.10.2021",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  "-\$44,99",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            thickness: 1,
            color: Colors.black.withOpacity(0.15),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
            width: 20,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Genoe",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "14.05.2021",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  "-\$166,89",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            thickness: 1,
            color: Colors.black.withOpacity(0.15),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 12, bottom: 12),
            width: 20,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Genoe",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "24.01.2021",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  "-\$16,89",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Divider(
            indent: 25,
            endIndent: 25,
            thickness: 1,
            color: Colors.black.withOpacity(0.15),
          ),
        ],
      ),
    );
  }
}

List<Color>? gradientColors = [
  Colors.green.shade900,
  const Color(0xff02d39a),
];

LineChartData mainData() {
  return LineChartData(
    borderData: FlBorderData(
      show: false,
    ),
    gridData: FlGridData(
        show: false,
        horizontalInterval: 1.6,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            dashArray: const [3, 3],
            color: const Color(0xff37434d).withOpacity(0.2),
            strokeWidth: 2,
          );
        },
        drawVerticalLine: false),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: SideTitles(showTitles: false),
      topTitles: SideTitles(showTitles: false),
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 22,
        interval: 1,
        getTextStyles: (context, value) => const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11),
        getTitles: (value) {
          switch (value.toInt()) {
            case 0:
              return 'JAN 2022';
            case 4:
              return 'JUN 2021';
            case 8:
              return 'SEP 2021';
            case 11:
              return 'OCT 2021';
          }
          return '';
        },
        margin: 10,
      ),
      leftTitles: SideTitles(
        showTitles: true,
        interval: 1,
        getTextStyles: (context, value) => const TextStyle(
          color: Colors.white,
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
        reservedSize: 25,
        margin: 12,
      ),
    ),
    minX: 0,
    maxX: 11,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: _isLoaded
            ? [
                FlSpot(0, 3),
                FlSpot(2.4, 2),
                FlSpot(4.4, 3),
                FlSpot(6.4, 3.1),
                FlSpot(8, 4),
                FlSpot(9.5, 4),
                FlSpot(11, 5),
              ]
            : [
                FlSpot(0, 0),
                FlSpot(2.4, 0),
                FlSpot(4.4, 0),
                FlSpot(6.4, 0),
                FlSpot(8, 0),
                FlSpot(9.5, 0),
                FlSpot(11, 0)
              ],
        isCurved: true,
        colors: gradientColors,
        barWidth: 2,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
            show: true,
            gradientFrom: Offset(0, 0),
            gradientTo: Offset(0, 1),
            colors: [
              Color(0xff02d39a).withOpacity(0.1),
              Color(0xff02d39a).withOpacity(0),
            ]),
      ),
    ],
  );
}
