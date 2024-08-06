// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/today_sales_section/widgets/today_sale_widget.dart';
import 'package:sales_management_dashboard/utils/assets_util.dart';

class TodaySalesSectionWidget extends StatelessWidget {
  const TodaySalesSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 200,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Today’s Sales'),
          Text(
            'Sales Summary',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w100,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TodaySaleWidget(
                color: Color(0xFFFEB95A),
                icon: AssetsUtil.salesIcon,
                label: 'Total Sales',
                value: '\$5k',
                percentage: '10',
              ),
              TodaySaleWidget(
                color: Color(0xFFA9DFD8),
                icon: AssetsUtil.orderIcon,
                label: 'Total Order',
                value: '500',
                percentage: '8',
              ),
              TodaySaleWidget(
                color: Color(0xFFF2C8ED),
                icon: AssetsUtil.productIcon,
                label: 'Product Sold',
                value: '9',
                percentage: '2',
              ),
              TodaySaleWidget(
                color: Color(0xFF20AEF3),
                icon: AssetsUtil.addCustomerIcon,
                label: 'New Customer',
                value: '12',
                percentage: '3',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
