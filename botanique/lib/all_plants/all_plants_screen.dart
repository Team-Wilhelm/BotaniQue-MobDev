import 'package:flutter/material.dart';

class AllPlantsScreen extends StatelessWidget {
  const AllPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: const Text("All Plants"),
        ),
      ),
    );
  }
}
