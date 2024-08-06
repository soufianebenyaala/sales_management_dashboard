import 'package:flutter/material.dart';
import 'package:sales_management_dashboard/core/themes/theme.dart';
import 'package:sales_management_dashboard/sales_management_dashboard_layout/sales_management_dashboard_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sales Management Dashboard',
      themeMode: ThemeMode.dark,
      darkTheme: MaterialTheme.dark(),
      theme: MaterialTheme.light(),
      home: SalesManagementDashboardLayout(),
    );
  }
}
