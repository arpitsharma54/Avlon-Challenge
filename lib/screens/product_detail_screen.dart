import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task/dummy_data.dart';

import '../widgets/product_screen_appBar.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routName = '/product-screen';

  ProductDetailScreen({
    Key? key,
  }) : super(key: key);
  final FocusNode titleFocus = FocusNode();
  final FocusNode urlFocus = FocusNode();
  final FocusNode descriptionFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isKeyboeardOpen = MediaQuery.of(context).viewInsets.bottom;
    if (isKeyboeardOpen == 0) {
      titleFocus.unfocus();
      urlFocus.unfocus();
      descriptionFocus.unfocus();
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            const ProductScreenAppBar(),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(
                  top: height * 0.025,
                ),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 239, 239, 246),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                height: height * 0.83,
                width: width * 1,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.04,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.h_mobiledata,
                                color: Color.fromRGBO(108, 96, 224, 1),
                                size: 25,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Text(
                                'Title',
                                style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: height * 0.06,
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.05),
                            margin: EdgeInsets.symmetric(
                              vertical: height * 0.01,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: TextField(
                                textInputAction: TextInputAction.next,
                                focusNode: titleFocus,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter title here...',
                                ),
                                enableInteractiveSelection: true,
                                obscureText: true,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.link_rounded,
                                color: Color.fromRGBO(108, 96, 224, 1),
                                size: 25,
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text(
                                'Url',
                                style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: height * 0.06,
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.05),
                            margin: EdgeInsets.symmetric(
                              vertical: height * 0.01,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: TextField(
                                textInputAction: TextInputAction.next,
                                focusNode: urlFocus,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter url here...',
                                ),
                                enableInteractiveSelection: true,
                                obscureText: true,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.description,
                                color: Color.fromRGBO(108, 96, 224, 1),
                                size: 20,
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text(
                                'Desciption',
                                style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: height * 0.28,
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.05,
                                vertical: height * 0.015),
                            margin: EdgeInsets.symmetric(
                              vertical: height * 0.01,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: TextField(
                              maxLines: 15,
                              keyboardType: TextInputType.multiline,
                              textInputAction: TextInputAction.done,
                              focusNode: descriptionFocus,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter description Here...',
                              ),
                              enableInteractiveSelection: true,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.image,
                                color: Color.fromRGBO(108, 96, 224, 1),
                                size: 20,
                              ),
                              SizedBox(
                                width: width * 0.03,
                              ),
                              Text(
                                'Photos',
                                style: GoogleFonts.poppins(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                        color: Color.fromARGB(255, 216, 213, 240),
                      ),
                      margin: EdgeInsets.only(left: width * 0.04),
                      padding: EdgeInsets.only(
                          left: width * 0.04,
                          top: height * 0.02,
                          bottom: height * 0.02),
                      child: Row(
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                minimumSize: Size(width * 0.1, height * 0.075),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              color: Color.fromRGBO(108, 96, 224, 1),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          SizedBox(
                            height: height * 0.08,
                            width: width * 0.757,
                            child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: Dummy_item_data.length,
                              itemBuilder: (ctx, i) => Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: width * 0.018),
                                height: 65,
                                width: 65,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    image: AssetImage(Dummy_item_data[i].image),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width * 0.04),
                      child: Row(
                        children: [
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(width * 0.44, height * 0.05),
                              side: const BorderSide(
                                color: Color.fromRGBO(108, 96, 224, 1),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'cancel',
                              style: GoogleFonts.poppins(
                                color: const Color.fromRGBO(108, 96, 224, 1),
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(108, 96, 224, 1),
                              minimumSize: Size(width * 0.44, height * 0.05),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'save',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: height * 0.142,
              right: width * 0.1,
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 0.2,
                          color: Colors.black12),
                    ],
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.star_rounded,
                    color: Color.fromRGBO(249, 171, 76, 1),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.142,
              right: width * 0.25,
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 0.2,
                          color: Colors.black12),
                    ],
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.notifications,
                    color: Color.fromRGBO(167, 160, 236, 0.7),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
