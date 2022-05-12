import 'package:flutter/material.dart';

import './screens/home_page_screen.dart';
import 'screens/bookmark_screen.dart';
import 'screens/product_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageScreen(),
      routes: {
        BookmarkDetailScreen.routeName: (context) =>const  BookmarkDetailScreen(),
        ProductDetailScreen.routName: (context) => ProductDetailScreen(),
      },
    );
  }
}
