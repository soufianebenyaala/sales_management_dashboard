import 'package:flutter/material.dart';

class TopProductModel {
  final String id;
  final String name;
  final double popularity;
  final int sale;
  final Color color;

  TopProductModel({
    required this.id,
    required this.name,
    required this.popularity,
    required this.sale,
    required this.color,
  });
}

List<TopProductModel> rows = [
  TopProductModel(
    id: '01',
    name: 'Home Decore Range',
    popularity: 70,
    sale: 48,
    color: Color(0xFFFCB859),
  ),
  TopProductModel(
    id: '02',
    name: 'Disney Princess Dress',
    popularity: 60,
    sale: 17,
    color: Color(0xFFA9DFD8),
  ),
  TopProductModel(
    id: '03',
    name: 'Bathroom Essentials',
    popularity: 40,
    sale: 19,
    color: Color(0xFF28AEF3),
  ),
  TopProductModel(
    id: '04',
    name: 'Apple Smartwatch',
    popularity: 20,
    sale: 29,
    color: Color(0xFFF2C8ED),
  ),
];
