import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:fluttercharts/charts/PieIndicator.dart';

class PieChartSample extends StatefulWidget {
  @override
  _PieChartSampleState createState() => _PieChartSampleState();
}

class _PieChartSampleState extends State<PieChartSample> {
  int _clickedIndex;

  List<PieChartSectionData> buildPieChartSections() {
    return List.generate(4, (index) {
      final bool isClicked = index == _clickedIndex;
      final double fontSize = isClicked ? 35 : 20;
      final double radius = isClicked ? 120 : 100;

      switch (index) {
        case 0:
          return PieChartSectionData(
            color: Color(0xff0293ee),
            value: 40,
            title: '40%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: Color(0xfff8b250),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: Color(0xff13d38e),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          );
        default:
          return null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: PieChart(
            PieChartData(
              pieTouchData: PieTouchData(touchCallback: (touchResponse) {
                setState(() {
                  if (touchResponse.touchInput is FlLongPressEnd ||
                      touchResponse.touchInput is FlPanEnd) {
                    _clickedIndex = -1;
                  } else {
                    _clickedIndex = touchResponse.touchedSectionIndex;
                  }
                });
              }),
              borderData: FlBorderData(show: true),
              sectionsSpace: 0,
              centerSpaceRadius: 0,
              sections: buildPieChartSections(),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PieIndicator(
              color: Color(0xff0293ee),
              text: 'First',
            ),
            SizedBox(height: 5),
            PieIndicator(
              color: Color(0xfff8b250),
              text: 'Second',
            ),
            SizedBox(height: 5),
            PieIndicator(
              color: Color(0xff845bef),
              text: 'Third',
            ),
            SizedBox(height: 5),
            PieIndicator(
              color: Color(0xff13d38e),
              text: 'Fourth',
            ),
            SizedBox(height: 5),
          ],
        )
      ],
    );
  }
}
