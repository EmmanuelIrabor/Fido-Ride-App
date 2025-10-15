import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../../components/navbar.dart';

class SelectLocationInterState extends StatelessWidget {
  const SelectLocationInterState({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // === Top Bar ===
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/logo.png', width: 50, height: 50),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(Icons.notifications_none, size: 28),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // === Hero Section ===
              Container(
                width: screenWidth,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFD700), Color(0xFF00BFFF)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // === LEFT SIDE TEXT ===
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Icon(
                          //   PhosphorIcons.trafficSignal(
                          //     PhosphorIconsStyle.fill,
                          //   ),
                          //   size: 26,
                          //   color: Colors.white,
                          // ),
                          // const SizedBox(height: 0),
                          const Text(
                            'Get Started with Inter State Rides',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Select your location of origin and \nmap your trip',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    // === RIGHT SIDE IMAGE ===
                    // Flexible(
                    //   flex: 1,
                    //   child: Image.asset(
                    //     'assets/images/fido_car_straight.png',
                    //     height: 160,
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    Row(
                      children: [
                        Icon(
                          PhosphorIcons.van(PhosphorIconsStyle.fill),
                          size: 26,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // === Section Header ===
              Row(
                children: [
                  const Text(
                    'Select your Location',
                    style: TextStyle(
                      color: Color(0xFF8F8F8F),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 6),
                  Icon(
                    PhosphorIcons.arrowSquareOut(PhosphorIconsStyle.regular),
                    size: 24,
                    color: const Color(0xFF8F8F8F),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // === Bottom Nav ===
      bottomNavigationBar: NavBar(currentIndex: 1, onTap: (index) {}),
    );
  }
}
