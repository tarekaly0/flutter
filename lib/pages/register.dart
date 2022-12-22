import 'package:flutter/material.dart';
import 'package:flutter_application/share/colors.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 212, 206, 208),
        body: Center(
          child: Padding(padding: const EdgeInsets.all(20.0),)),
      ))
  }
}
