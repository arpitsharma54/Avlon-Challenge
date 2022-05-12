import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageAppBar extends StatelessWidget {
  final FocusNode searchFocus;

  const HomePageAppBar({Key? key, required this.searchFocus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      height: height * 0.31,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(108, 96, 224, 1),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
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
              const Icon(
                Icons.interests_outlined,
                size: 30,
                color: Colors.white,
              ),
              Material(
                color: const Color.fromRGBO(108, 96, 224, 1),
                child: IconButton(
                    onPressed: () {},
                    splashRadius: 22,
                    splashColor: Colors.white,
                    icon: const Icon(
                      Icons.notifications_outlined,
                      size: 30,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            'Hi Sonia',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 23,
            ),
          ),
          Text(
            'Welcome Back',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 23,
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            height: height * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromRGBO(167, 160, 236, 0.7),
            ),
            child: Center(
              child: TextField(
                focusNode: searchFocus,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                ),
                cursorRadius: const Radius.circular(30),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    hintText: 'what category are you searching for?',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    prefixIcon: const Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
