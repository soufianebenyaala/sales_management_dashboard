import 'package:flutter/material.dart';
import 'package:sales_management_dashboard/dashboard_screen/widgets/customer_fulfilment_section/widgets/customer_fulfilment_graph_widget.dart';

class CustomerFulfilmentSectionWidget extends StatelessWidget {
  const CustomerFulfilmentSectionWidget({super.key});

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
          Text('Customer Fulfilment'),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: CustomerFulfilmentGraphWidget()),
        ],
      ),
    );
  }
}
