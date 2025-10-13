import 'package:flutter/material.dart';
import '../pages/Services/services.dart';
import '../pages/Home/passanger_home.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const NavBar({super.key, this.currentIndex = 0, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: const Color(0xFF808080),
      elevation: 0,
      onTap: (index) {
        onTap(index);

        if (index == 0 && currentIndex != 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const PassengerHomeScreen(),
            ),
          );
        }
        if (index == 1 && currentIndex != 1) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const ServicesScreen()),
          );
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Services'),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border),
          label: 'Activity',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Account',
        ),
      ],
    );
  }
}
