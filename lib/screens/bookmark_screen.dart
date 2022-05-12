import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:task/widgets/item_category_button.dart';
import '../widgets/bookmark_appBar.dart';
import '../dummy_data.dart';
import '../widgets/bookmark_items_list.dart';

class BookmarkDetailScreen extends StatefulWidget {
  const BookmarkDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/item-detail';

  @override
  State<BookmarkDetailScreen> createState() => _BookmarkDetailScreenState();
}

class _BookmarkDetailScreenState extends State<BookmarkDetailScreen> {
  int currentButton = 0;
  final FocusNode searchFocus = FocusNode();

  void onClick(int index) {
    setState(() {
      currentButton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final isKeyboeardOpen = MediaQuery.of(context).viewInsets.bottom;
    if (isKeyboeardOpen == 0) {
      searchFocus.unfocus();
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(247, 248, 248, 255),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookmarkAppBar(searchFocus: searchFocus),
          SizedBox(
            height: height * 0.012,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Text(
              'Label',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.012,
          ),
          Container(
            padding: EdgeInsets.only(left: width * 0.05),
            child: Row(
              children: [
                SizedBox(
                  height: height * 0.04,
                  child: OutlinedButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(
                          const Color.fromARGB(69, 76, 85, 249)),
                      side: MaterialStateProperty.all(
                        const BorderSide(
                          color: Color.fromRGBO(108, 96, 224, 1),
                        ),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Add more..
                    },
                    child: const Icon(
                      Icons.add,
                      color: Color.fromRGBO(108, 96, 224, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                SizedBox(
                  height: height * 0.04,
                  width: width * 0.767,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: Dummy_product_category.length,
                    itemBuilder: (ctx, i) => ItemCategoryButton(
                      currentButton: currentButton,
                      onClick: onClick,
                      index: i,
                      width: width,
                      title: Dummy_product_category[i].title,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: width * 0.05),
            margin: EdgeInsets.symmetric(vertical: height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bookmarks',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.bookmark_outline_sharp),
                        Text('154')
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete_outline_outlined,
                        color: Color.fromRGBO(108, 96, 224, 1),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.exit_to_app,
                        color: Color.fromRGBO(108, 96, 224, 1),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.format_list_bulleted_sharp,
                        color: Color.fromRGBO(108, 96, 224, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.05),
            height: height * 0.546,
            child: ListView.builder(
              clipBehavior: Clip.antiAlias,
              physics: const BouncingScrollPhysics(),
              itemCount: Dummy_item_data.length,
              itemBuilder: (ctx, i) => BookmarkItemsList(
                image: Dummy_item_data[i].image,
                title: Dummy_item_data[i].title,
              ),
            ),
          )
        ],
      ),
    );
  }
}
