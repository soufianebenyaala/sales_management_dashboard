import 'package:flutter/material.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/visitor_insights_section/widgets/visitor_insights_graph_widget.dart';

class VisitorInsightsSectionWidget extends StatelessWidget {
  const VisitorInsightsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Visitor Insights'),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: VisitorInsightsGraphWidget()),
        ],
      ),
    );
  }
}
