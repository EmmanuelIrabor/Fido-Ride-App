import 'package:flutter/material.dart';
import '../../core/constants.dart';
import 'otp_verification.dart';

class PhoneAuthPage extends StatelessWidget {
  const PhoneAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              // Top-center logo
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 80,
                  height: 80,
                ),
              ),

              const SizedBox(height: 24),

              // Centered heading
              const Center(
                child: Text(
                  'Get started with Fido',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),

              const SizedBox(height: 100),

              // Label
              const Text(
                'Mobile number',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Phone input container
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFDCDCDC),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    // Flag and dropdown icon
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/Nigerian_flag.png',
                          width: 24,
                          height: 24,
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xFF8F8F8F),
                        ),
                      ],
                    ),

                    const SizedBox(width: 12),

                    // Country code prefix
                    const Text(
                      '+234',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(width: 12),

                    // Phone number input
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(color: Color(0xFF8F8F8F)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Continue button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.main,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    minimumSize: const Size.fromHeight(
                      50,
                    ), // height only, width fills parent
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpVerificationPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Terms text bottom-left
              const Text(
                'By creating an account you automatically accept our terms and '
                'conditions and confirm you’re over 18.',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
