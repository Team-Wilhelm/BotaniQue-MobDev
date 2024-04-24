import 'package:flutter/material.dart';
import 'package:botanique/welcome/welcome_screen.dart';
import 'utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: SafeArea(child: WelcomeScreen()),
    );
  }
}
