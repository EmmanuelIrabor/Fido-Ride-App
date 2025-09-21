import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const NavBar({super.key, this.currentIndex = 0, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFDCDCDC),
      width: double.infinity,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xFF808080),
        elevation: 0,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps), // Four-squares icon
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.more_horiz), // 5th placeholder if needed
          //   label: 'More',
          // ),
        ],
      ),
    );
  }
}
