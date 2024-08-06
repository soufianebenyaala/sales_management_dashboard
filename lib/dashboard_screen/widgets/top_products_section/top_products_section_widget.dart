import 'package:flutter/material.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/top_products_section/widgets/top_product_table_widget.dart';

class TopProductsSectionWidget extends StatelessWidget {
  const TopProductsSectionWidget({super.key});

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
          Text('Top Products'),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: TopProductTableWidget()),
        ],
      ),
    );
  }
}
