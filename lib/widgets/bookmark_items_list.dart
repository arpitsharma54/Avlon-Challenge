import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/screens/product_detail_screen.dart';

import './custom_door_button.dart';

class BookmarkItemsList extends StatelessWidget {
  final String image;
  final String title;

  const BookmarkItemsList({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(ProductDetailScreen.routName),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        padding: EdgeInsets.symmetric(
            vertical: height * 0.02, horizontal: width * 0.04),
        margin: EdgeInsets.symmetric(vertical: height * 0.01),
        height: height * 0.12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 80,
                  width: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.notifications,
                          color: Color.fromRGBO(167, 160, 236, 0.7),
                        ),
                        SizedBox(width: width * 0.04),
                        const Icon(
                          Icons.star_rounded,
                          color: Color.fromRGBO(167, 160, 236, 0.7),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const CustomDoorbutton(),
          ],
        ),
      ),
    );
  }
}
