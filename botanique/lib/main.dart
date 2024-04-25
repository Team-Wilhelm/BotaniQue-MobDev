import 'package:botanique/login/login_screen.dart';
import 'package:flutter/material.dart';

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
      home: SafeArea(child: LoginScreen()),
    );
  }
}
