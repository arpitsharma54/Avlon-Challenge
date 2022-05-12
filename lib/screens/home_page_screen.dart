import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/grid_categories.dart';
import '../widgets/home_page_appBar.dart';
import '../dummy_data.dart';

class HomePageScreen extends StatelessWidget {
  static const routeName = '/home-page';
  HomePageScreen({Key? key}) : super(key: key);

  final FocusNode searchFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final isKeyboeardOpen = MediaQuery.of(context).viewInsets.bottom;
    if (isKeyboeardOpen == 0) {
      searchFocus.unfocus();
    }
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 248, 255, 1),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(108, 96, 224, 1),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: height * 0.07,
          padding: EdgeInsets.symmetric(horizontal: width * 0.15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                splashRadius: 25,
                onPressed: () {},
                icon: const Icon(
                  Icons.home_outlined,
                  color: Color.fromRGBO(108, 96, 224, 0.9),
                  size: 35,
                ),
              ),
              IconButton(
                splashRadius: 25,
                onPressed: () {},
                icon: const Icon(
                  Icons.star_outline,
                  color: Color.fromRGBO(108, 96, 224, 0.9),
                  size: 35,
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          HomePageAppBar(searchFocus: searchFocus),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(0, 0, 0, 0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        splashRadius: 25,
                        // constraints: const BoxConstraints(
                        //     minHeight: 0.0, minWidth: 0.0, maxWidth: 20),
                        icon: const Icon(
                          Icons.delete_outline_outlined,
                          color: Color.fromRGBO(167, 160, 236, 1),
                        )),
                    IconButton(
                        onPressed: () {},
                        splashRadius: 25,
                        // constraints: const BoxConstraints(
                        //     minHeight: 0.0, minWidth: 0.0, maxWidth: 20),
                        icon: const Icon(
                          Icons.note_alt_outlined,
                          color: Color.fromRGBO(167, 160, 236, 1),
                        )),
                    IconButton(
                        onPressed: () {},
                        splashRadius: 25,
                        // constraints: const BoxConstraints(
                        //     minHeight: 0.0, minWidth: 0.0, maxWidth: 20),
                        icon: const Icon(
                          Icons.format_list_bulleted_sharp,
                          color: Color.fromRGBO(108, 96, 224, 1),
                        )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          SizedBox(
            height: height * 0.539,
            child: GridView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: Dummy_Grid.map(
                (gridData) => GridCategories(
                  title: gridData.title,
                  image: gridData.image,
                  color: gridData.color,
                  textColor: gridData.textColor,
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
