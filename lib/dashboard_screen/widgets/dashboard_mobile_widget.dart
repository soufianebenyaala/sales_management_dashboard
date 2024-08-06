// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/customer_fulfilment_section/customer_fulfilment_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/earnings_section/earnings_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/level_section/level_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/today_sales_section/today_sales_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/top_products_section/top_products_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/visitor_insights_section/visitor_insights_section_widget.dart';

class DashboardMobileWidget extends StatelessWidget {
  const DashboardMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TodaySalesSectionWidget(),
        SizedBox(
          height: 15,
        ),
        LevelSectionWidget(),
        SizedBox(
          height: 15,
        ),
        TopProductsSectionWidget(),
        SizedBox(
          height: 15,
        ),
        CustomerFulfilmentSectionWidget(),
        SizedBox(
          height: 15,
        ),
        EarningsSectionWidget(),
        SizedBox(
          height: 15,
        ),
        VisitorInsightsSectionWidget(),
      ],
    );
  }
}
