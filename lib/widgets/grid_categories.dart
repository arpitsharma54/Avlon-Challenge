import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:task/screens/bookmark_screen.dart';

class GridCategories extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final Color textColor;
  const GridCategories(
      {Key? key,
      required this.textColor,
      required this.title,
      required this.image,
      required this.color})
      : super(key: key);

  void selectedItem(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(BookmarkDetailScreen.routeName, arguments: title);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(35),
      color: color,
      child: InkWell(
        onTap: () => selectedItem(context),
        splashColor: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: Image(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: textColor,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
