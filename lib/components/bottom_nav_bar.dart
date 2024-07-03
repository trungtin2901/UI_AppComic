import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30,right: 30,bottom:20 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000),
        color: Color.fromARGB(255, 225, 48, 48)),
      padding: EdgeInsets.symmetric(vertical: 5), // Adjust padding as needed
      child: const GNav(
        color: Colors.grey,
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        iconSize: 30,
        tabBorderRadius: 15,
        activeColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: [
          GButton(
            icon: Icons.home
          ),
          GButton(
            icon: Icons.favorite
          ),
          GButton(
            icon: Icons.search
          ),
        ],
      ),
    );
  }
}