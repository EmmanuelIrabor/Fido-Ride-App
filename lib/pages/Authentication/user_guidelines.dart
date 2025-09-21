import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../Home/passanger_home.dart';

class UserGuidelinesPage extends StatelessWidget {
  const UserGuidelinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.main,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/guidelines_img.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 40),

            // Content
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 250, 20, 100),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Fido Community Guidelines',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      '''
To keep Fido Ride safe and enjoyable for everyone, please follow these rules:

1. Respect All Riders and Drivers  
   Be courteous and professional. Harassment, hate speech, or abusive language is not allowed.

2. Safe & Legal Rides Only  
   Follow traffic laws and use seat belts. No illegal substances or weapons are permitted.

3. Honest Payments and Accounts  
   Use your real identity, pay the correct fare, and avoid fraudulent activity.

4. Cleanliness and Care  
   Keep vehicles clean and avoid causing damage.

5. Report Issues Promptly  
   Use in-app support to report unsafe behavior, accidents, or policy violations.
                      ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Button
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 100,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PassengerHomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'I Understand',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
