import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: defaultPadding,
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
          ),
          spacer,
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(
                labelText: 'Password'),
            obscureText: true,
          ),
          spacer,
          ElevatedButton(onPressed: ()=>{}, child: const Text('Login'))
        ],
      ),
    );
  }
}
