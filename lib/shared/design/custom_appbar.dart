import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff19212E),
      elevation: 0.0,
      title: const Text(
        "المحادثات",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      leading: TextButton(
        onPressed: () {},
        child: const Text(
          "تحرير",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_circle_outline,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.edit_note_outlined,
          ),
        ),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(60);
}
