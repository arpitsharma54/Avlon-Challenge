import 'package:flutter/material.dart';
import 'package:task/models/item_data.dart';
import 'models/grid_item.dart';
import 'models/item_category.dart';

// ignore: constant_identifier_names
const Dummy_Grid = [
  GridItem(
    title: 'New ideas',
    image: 'assets/light-bulb.png',
    color: Color.fromRGBO(255, 243, 198, 1),
    textColor: Color.fromRGBO(249, 171, 76, 1),
  ),
  GridItem(
    title: 'Music',
    image: 'assets/musical-notes.png',
    color: Color.fromRGBO(215, 239, 255, 1),
    textColor: Color.fromRGBO(62, 160, 247, 1),
  ),
  GridItem(
    title: 'Programming',
    image: 'assets/programming.png',
    color: Color.fromRGBO(224, 215, 255, 1),
    textColor: Color.fromRGBO(125, 94, 241, 1),
  ),
  GridItem(
    title: 'Cooking',
    image: 'assets/cooking.png',
    color: Color.fromRGBO(251, 225, 251, 1),
    textColor: Color.fromRGBO(241, 96, 199, 1),
  ),
  GridItem(
    title: 'Travel',
    image: 'assets/plane.png',
    color: Color.fromRGBO(184, 238, 220, 1),
    textColor: Color.fromRGBO(64, 169, 133, 1),
  ),
  GridItem(
    title: 'Dummy',
    image: 'assets/solar-system.png',
    color: Color.fromRGBO(255, 223, 205, 1),
    textColor: Color.fromRGBO(254, 147, 123, 1),
  ),
];

// ignore: constant_identifier_names
const Dummy_product_category = [
  ItemCategory(title: 'All'),
  ItemCategory(title: 'Cake'),
  ItemCategory(title: 'Fast Food'),
  ItemCategory(title: 'Kabab'),
];

// ignore: constant_identifier_names
const Dummy_item_data = [
  ItemData(image: 'assets/Cupcake.jpg', title: 'Cupcake'),
  ItemData(image: 'assets/Pancake.jpg', title: 'Pancake'),
  ItemData(image: 'assets/Vanillacake.jpg', title: 'Vanilla Cake'),
  ItemData(image: 'assets/donut.jpg', title: 'Donut'),
  ItemData(image: 'assets/Chocolatecake.jpg', title: 'Chocolate Cake'),
];
