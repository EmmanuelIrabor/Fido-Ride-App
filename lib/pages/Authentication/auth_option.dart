import 'package:flutter/material.dart';
import '../../core/constants.dart';
import 'phone_auth.dart';

class AuthOptionPage extends StatelessWidget {
  const AuthOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Full-screen background image
          Image.asset(
            'assets/images/Nigerian_landscape.jpg',
            fit: BoxFit.cover,
          ),

          // Bottom-center buttons
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 40),
                // Top center logo
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 80,
                    height: 80,
                  ),
                ),
                const Spacer(),
                // Create Account button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.main,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PhoneAuthPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Create Account',
                      // style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      // TODO: navigate to sign-in page
                    },
                    child: const Text(
                      'Sign into your account',
                      textAlign: TextAlign.center,
                      // style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
