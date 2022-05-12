import 'package:flutter/material.dart';

class GridItem {
  final String title;
  final String image;
  final Color color;
  final Color textColor;

  const GridItem({
    required this.textColor,
    required this.title,
    required this.image,
    required this.color,
  });
}
