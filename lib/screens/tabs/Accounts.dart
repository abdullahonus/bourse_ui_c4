import 'package:flutter/material.dart';

enum ChartType { disc, ring }
enum LegendPosition { top, bottom, left, right }

class PieChart extends StatefulWidget {
  const PieChart({
    required this.dataMap,
    this.chartType = ChartType.disc,
    this.chartRadius,
    this.animationDuration,
    this.chartLegendSpacing = 48,
    this.colorList = defaultColorList,
    this.initialAngleInDegree = 0.0,
    this.formatChartValues,
    this.centerText,
    this.centerTextStyle,
    this.ringStrokeWidth = 20.0,
    this.legendOptions = const LegendOptions(),
    this.chartValuesOptions = const ChartValuesOptions(),
    this.emptyColor = Colors.grey,
    this.gradientList,
    this.emptyColorGradient = const [Colors.black26, Colors.black54],
    Key? key,
  }) : super(key: key);

  final Map<String, double> dataMap;
  final ChartType chartType;
  final double? chartRadius;
  final Duration? animationDuration;
  final double chartLegendSpacing;
  final List<Color> colorList;
  final List<List<Color>>? gradientList;
  final double initialAngleInDegree;
  final Function? formatChartValues;
  final String? centerText;
  final TextStyle? centerTextStyle;
  final double ringStrokeWidth;
  final LegendOptions legendOptions;
  final ChartValuesOptions chartValuesOptions;
  final Color emptyColor;
  final List<Color> emptyColorGradient;

  @override
  _PieChartState createState() => _PieChartState();
}

Map<String, double> dataMap = {
  "Flutter": 5,
  "React": 3,
  "Xamarin": 2,
  "Ionic": 2,
};

class _PieChartState extends State<PieChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            chartRadius: MediaQuery.of(context).size.width / 3.2,

            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 32,
            centerText: "HYBRID",
            legendOptions: LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.right,
              showLegends: true,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: ChartValuesOptions(
              showChartValueBackground: true,
              showChartValues: true,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 1,
            ),
            // gradientList: ---To add gradient colors---
            // emptyColorGradient: ---Empty Color gradient---
          ),
        ));
  }
}

const defaultChartValueStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

const defaultLegendStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
);

const List<Color> defaultColorList = [
  Color(0xFFff7675),
  Color(0xFF74b9ff),
  Color(0xFF55efc4),
  Color(0xFFffeaa7),
  Color(0xFFa29bfe),
  Color(0xFFfd79a8),
  Color(0xFFe17055),
  Color(0xFF00b894),
];

Color getColor(List<Color> colorList, int index) {
  if (index > (colorList.length - 1)) {
    final newIndex = index % (colorList.length - 1);
    return colorList.elementAt(newIndex);
  }
  return colorList.elementAt(index);
}

List<Color> getGradient(List<List<Color>> gradientList, int index,
    {required bool isNonGradientElementPresent,
    required List<Color> emptyColorGradient}) {
  index = isNonGradientElementPresent ? index - 1 : index;
  if (index == -1) {
    return emptyColorGradient;
  } else if (index > (gradientList.length - 1)) {
    final newIndex = index % gradientList.length;
    return gradientList.elementAt(newIndex);
  }
  return gradientList.elementAt(index);
}

class LegendOptions {
  final bool showLegends;
  final bool showLegendsInRow;
  final TextStyle legendTextStyle;
  final BoxShape legendShape;
  final LegendPosition legendPosition;

  const LegendOptions({
    this.showLegends = true,
    this.showLegendsInRow = false,
    this.legendTextStyle = defaultLegendStyle,
    this.legendShape = BoxShape.circle,
    this.legendPosition = LegendPosition.right,
  });
}

class ChartValuesOptions {
  final bool showChartValueBackground;
  final int decimalPlaces;
  final bool showChartValuesInPercentage;
  final bool showChartValues;
  final bool showChartValuesOutside;
  final Color? chartValueBackgroundColor;
  final TextStyle chartValueStyle;

  const ChartValuesOptions({
    this.showChartValueBackground = true,
    this.decimalPlaces = 1,
    this.chartValueBackgroundColor,
    this.showChartValuesInPercentage = false,
    this.chartValueStyle = defaultChartValueStyle,
    this.showChartValues = true,
    this.showChartValuesOutside = false,
  });
}
