import 'package:flutter/material.dart';
import '../../core/constants.dart';
import 'intro_screen_two.dart';

class IntroScreenOne extends StatelessWidget {
  const IntroScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            // Top Center Title
            const Text(
              "Welcome to",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // Center Image
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/intro_car_one.png',
                  width: 500,
                  height: 500,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Main Text
            const Text(
              "Fido ride",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // Subtext
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Your city, your schedule, your ride",
                style: TextStyle(color: Colors.white70, fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ),

            const SizedBox(height: 40),

            // 3 Dot Indicator Placeholder
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildDot(true), _buildDot(false), _buildDot(false)],
            ),

            const SizedBox(height: 40),

            // Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IntroScreenTwo(),
                    ),
                  );
                },
                child: const Text(
                  "Let's go",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // dot builder widget
  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white54,
        shape: BoxShape.circle,
      ),
    );
  }
}
