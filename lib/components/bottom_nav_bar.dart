import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, required this.onTabChange});
  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return GNav(
        color: const Color.fromARGB(255, 255, 255, 255),
        activeColor: const Color.fromARGB(255, 197, 174, 124),
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade300,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 100,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Ask',
          ),
          GButton(
            icon: Icons.menu_book,
            text: 'Learn',
          )
        ]);
  }
}
