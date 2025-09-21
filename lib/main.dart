import 'package:flutter/material.dart';
import 'core/constants.dart';
import 'pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Manrope', primaryColor: AppColors.main),
      home: const SplashPage(),
    );
  }
}
