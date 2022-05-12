import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductScreenAppBar extends StatelessWidget {
  const ProductScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      height: height * 0.22,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(108, 96, 224, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                color: const Color.fromRGBO(108, 96, 224, 1),
                child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    splashRadius: 22,
                    splashColor: Colors.white,
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 30,
                      color: Colors.white,
                    )),
              ),
              Text(
                'Title',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Material(
                color: const Color.fromRGBO(108, 96, 224, 1),
                child: IconButton(
                    onPressed: () {},
                    splashRadius: 22,
                    splashColor: Colors.white,
                    icon: const Icon(
                      Icons.share_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
