// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_management_dashboard/core/contants.dart';
import 'package:sales_management_dashboard/core/widgets/global_text_form_field.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/dashboard_desktop_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/dashboard_mobile_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/top_products_section/top_products_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/customer_fulfilment_section/customer_fulfilment_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/earnings_section/earnings_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/level_section/level_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/today_sales_section/today_sales_section_widget.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/visitor_insights_section/visitor_insights_section_widget.dart';
import 'package:sales_management_dashboard/utils/assets_util.dart';

// This is the type used by the popup menu below.
enum SampleItem { itemOne, itemTwo, itemThree }

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15),
            child: MediaQuery.of(context).size.width > Constants.tabletWidth
                ? DashboardDesktopWidget()
                : DashboardMobileWidget()),
      ),
    );
  }
}

class DashboardTabletteWidget extends StatelessWidget {
  const DashboardTabletteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
