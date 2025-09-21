import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../Authentication/auth_option.dart';
// import 'intro_screen_five.dart';

class IntroScreenFour extends StatelessWidget {
  const IntroScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),

            const SizedBox(height: 30),

            // Main Texts (left aligned)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Quick drops,",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Fast dispatch",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),

            const SizedBox(height: 20),

            // Subtext (left aligned)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "We're always on time",
                style: TextStyle(color: Colors.white70, fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ),

            // Center Image
            Expanded(
              child: Center(
                child: Image.asset(
                  'assets/images/intro_car_four.png',
                  width: 400,
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Dot Indicator with second dot active
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildDot(false), _buildDot(false), _buildDot(true)],
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
                      builder: (context) => const AuthOptionPage(),
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
