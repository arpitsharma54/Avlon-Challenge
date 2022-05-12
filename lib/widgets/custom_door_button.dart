import 'package:flutter/material.dart';

class CustomDoorbutton extends StatelessWidget {
  const CustomDoorbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 255, 204, 136),
                  blurRadius: 10,
                  spreadRadius: 4),
            ],
            color: Color.fromRGBO(249, 171, 76, 1),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.door_back_door_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
