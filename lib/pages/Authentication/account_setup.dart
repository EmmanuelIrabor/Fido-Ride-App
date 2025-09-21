import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../core/constants.dart';
import 'account_setup_confirmation.dart';

class AccountSetupPage extends StatelessWidget {
  const AccountSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Full-width image
              const SizedBox(height: 100),
              Image.asset(
                'assets/images/account_car_img.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),

              // Title
              const Text(
                'Setup Your Account',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 30),

              // Name Input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: const TextStyle(color: Color(0xFF808080)),
                    filled: true,
                    fillColor: const Color(0x61DCDCDC), // 38% opacity
                    suffixIcon: Icon(
                      PhosphorIcons.user(),
                      color: const Color(0xFF808080),
                      size: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xFF808080)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xFF808080)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Email Input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Color(0xFF808080)),
                    filled: true,
                    fillColor: const Color(0x61DCDCDC),
                    suffixIcon: Icon(
                      PhosphorIcons.envelope(),
                      color: const Color(0xFF808080),
                      size: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xFF808080)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xFF808080)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 230),

              // Done Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.main,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountSetupConfirmation(),
                      ),
                    );
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
