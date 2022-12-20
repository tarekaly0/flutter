import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 212, 206, 208),
        body: Center(
          child: Padding(padding: const EdgeInsets.all(20.0)),
        ),
      ),
    );
  }
}
