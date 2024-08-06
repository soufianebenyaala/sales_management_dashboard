import 'package:flutter/material.dart';
import 'package:sales_management_dashboard/core/models/top_product_model.dart';

class TopProductTableWidget extends StatelessWidget {
  const TopProductTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: DataTable(
        columns: [
          DataColumn(
            label: Expanded(
              child: Text(
                '#',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color(0xFF87888C),
                    ),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Name',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color(0xFF87888C),
                    ),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Popularity',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color(0xFF87888C),
                    ),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                'Sales',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Color(0xFF87888C),
                    ),
              ),
            ),
          ),
        ],
        rows: rows
            .map(
              (row) => DataRow(
                cells: <DataCell>[
                  DataCell(Text(row.id)),
                  DataCell(
                    Text(
                      row.name,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  DataCell(
                    Slider(
                      activeColor: row.color,
                      max: 100,
                      min: 0,
                      value: row.popularity,
                      onChanged: (value) {},
                    ),
                  ),
                  DataCell(
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: row.color),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: row.color.withOpacity(0.1),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        '${row.sale}%',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: row.color,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
