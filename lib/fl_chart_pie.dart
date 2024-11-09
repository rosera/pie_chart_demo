import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    // FL_Chart: PieChart Widget
    return Stack(
      alignment: Alignment.center,
      children:
      [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("PIE CHART", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
            Text("Data Tracker", style: TextStyle(fontSize: 25.0)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: PieChart(
              swapAnimationDuration: const Duration(milliseconds: 750),
              swapAnimationCurve: Curves.easeInOutQuint,
              PieChartData(
                  sections: [
                    PieChartSectionData(
                      value: 50,
                      color: Colors.blue,
                      titleStyle: TextStyle(fontSize: 18.0),
                      titlePositionPercentageOffset: 1.5,
                    ),
                    PieChartSectionData(
                      value: 50,
                      color: Colors.green,
                      titleStyle: TextStyle(fontSize: 18.0),
                      titlePositionPercentageOffset: 1.5,
                    ),
                    PieChartSectionData(
                      value: 50,
                      color: Colors.red,
                      titleStyle: TextStyle(fontSize: 18.0),
                      titlePositionPercentageOffset: 1.5,
                    ),
                    PieChartSectionData(
                      value: 50,
                      color: Colors.orange,
                      titleStyle: TextStyle(fontSize: 18.0),
                      titlePositionPercentageOffset: 1.5,
                    ),
                  ]
              )
          ),
        ),
      ],
    );
  }
}