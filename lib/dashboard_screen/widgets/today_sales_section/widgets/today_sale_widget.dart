// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodaySaleWidget extends StatelessWidget {
  final String icon;
  final String label;
  final Color color;
  final String value;
  final String percentage;
  const TodaySaleWidget(
      {super.key,
      required this.icon,
      required this.label,
      required this.value,
      required this.color,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            height: 26,
            width: 26,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                  fontSize: 10,
                ),
          ),
          Text(
            '+$percentage from yesterday',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w100,
                  fontSize: 8,
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}
