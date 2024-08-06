import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class VisitorInsightsGraphWidget extends StatelessWidget {
  const VisitorInsightsGraphWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Jan', 50),
      ChartData('Feb', 90),
      ChartData('Mar', 455),
      ChartData('Apr', 600),
      ChartData('May', 302),
      ChartData('Jun', 200),
      ChartData('Jul', 360),
      ChartData('Aug', 500),
      ChartData('Sep', 120),
      ChartData('Oct', 286),
      ChartData('Nov', 220),
      ChartData('Dec', 90),
    ];
    return SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <CartesianSeries>[
          AreaSeries<ChartData, String>(
              legendIconType: LegendIconType.circle,
              legendItemText: 'Completed Ph.D.: 323 (75%)',
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFA9DFD8),
                  Color(0xFF1D1E26),
                ],
              ),
              borderColor: Color(0xFFA9DFD8),
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y),
        ]);
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y,
  );
  final String x;
  final double y;
}
