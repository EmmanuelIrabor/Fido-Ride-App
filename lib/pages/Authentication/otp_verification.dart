import 'dart:async';
import 'package:flutter/material.dart';
import '../../core/constants.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'otp_confirmation.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  late Timer _timer;
  int _secondsRemaining = 50;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() => _secondsRemaining--);
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              IconButton(
                icon: Icon(
                  PhosphorIcons.arrowCircleLeft(PhosphorIconsStyle.bold),
                  size: 32,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.pop(context),
              ),

              const SizedBox(height: 20),

              // Heading Text
              const Text(
                'Enter the 4-digit code sent via SMS to your phone number',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18, // medium-ish
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 40),

              // OTP input
              Center(
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(7.08),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: const Color(0xFFDCDCDC),
                    selectedFillColor: const Color(0xFFDCDCDC),
                    inactiveFillColor: const Color(0xFFDCDCDC),
                    activeColor: AppColors.main,
                    selectedColor: Colors.black,
                    inactiveColor: Colors.black,
                    fieldOuterPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,

                  onCompleted: (code) {
                    if (code == '1234') {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const OtpConfirmationPage(),
                        ),
                      );
                    } else {
                      // optionally show error
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Invalid OTP')),
                      );
                    }
                  },

                  onChanged: (value) {},
                ),
              ),

              const SizedBox(height: 20),

              // Countdown
              Center(
                child: Text(
                  '$_secondsRemaining s',
                  style: const TextStyle(
                    color: Color(0xFF8F8F8F),
                    fontSize: 16,
                  ),
                ),
              ),

              // const Spacer(),
              const SizedBox(height: 20),

              // Resend Button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.main,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 30,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: _secondsRemaining == 0
                      ? () {
                          // TODO: resend code
                          setState(() => _secondsRemaining = 50);
                          _startCountdown();
                        }
                      : null,
                  child: const Text(
                    'Resend Code',
                    style: TextStyle(fontSize: 16),
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
