import 'package:flutter/material.dart';
import 'package:fluttercharts/charts/BarChartSample.dart';
import 'package:fluttercharts/charts/LineChartSample.dart';
import 'package:fluttercharts/charts/PieChartSample.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffe00d82),
        centerTitle: true,
        title: Text(
          'Flutter Charts',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Pie Chart',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PieChartSample(),
          Divider(thickness: 2),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Bar Chart',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 20),
            child: BarChartSample(),
          ),
          Divider(thickness: 2),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Line Chart',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: LineChartSample(),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
