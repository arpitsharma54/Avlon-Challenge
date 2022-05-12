import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCategoryButton extends StatefulWidget {
  final double width;
  final String title;
  final int index;
  final int currentButton;
  final Function onClick;

  const ItemCategoryButton({
    Key? key,
    required this.width,
    required this.title,
    required this.index,
    required this.currentButton,
    required this.onClick,
  }) : super(key: key);

  @override
  State<ItemCategoryButton> createState() => _ItemCategoryButtonState();
}

class _ItemCategoryButtonState extends State<ItemCategoryButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onClick(widget.index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        margin: EdgeInsets.symmetric(horizontal: widget.width * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: widget.currentButton == widget.index
              ? const Color.fromRGBO(108, 96, 224, 1)
              : const Color.fromRGBO(167, 160, 236, 1),
        ),
        child: Center(
          child: Text(
            widget.title,
            style: GoogleFonts.poppins(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
