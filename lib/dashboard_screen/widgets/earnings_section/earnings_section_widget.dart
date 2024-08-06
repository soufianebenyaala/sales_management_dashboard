import 'package:flutter/material.dart';
import 'package:sales_management_dashboard/core/contants.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class EarningsSectionWidget extends StatelessWidget {
  const EarningsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    double thickness =
        MediaQuery.of(context).size.width > Constants.tabletWidth ? 50 : 10;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Earnings'),
          SizedBox(
            height: 5,
          ),
          Text(
            'Total Expense',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w100,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '\$6078.76',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Profit is 48% More than last Month',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w100,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3 - 65,
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  pointers: <GaugePointer>[
                    RangePointer(
                      value: 80,
                      width: thickness,
                    ),
                  ],
                  annotations: [
                    GaugeAnnotation(
                      axisValue: 50,
                      positionFactor: 0.2,
                      widget: Text(
                        '80%',
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                      ),
                    )
                  ],
                  startAngle: 180,
                  endAngle: 0,
                  axisLineStyle: AxisLineStyle(
                    thickness: thickness,
                  ),
                  canScaleToFit: true,
                  showLabels: false,
                  showFirstLabel: false,
                  showLastLabel: false,
                  showTicks: false,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
