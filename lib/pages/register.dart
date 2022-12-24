import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/login.dart';
import 'package:flutter_application/share/colors.dart';
import 'package:flutter_application/share/constant.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 212, 206, 208),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35,
            ),
            TextField(
                keyboardType: TextInputType.text,
                obscureText: false,
                decoration: dico.copyWith(
                  hintText: "Entar your username",
                )),
            const SizedBox(
              height: 30,
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: dico.copyWith(
                  hintText: "Entar your email",
                )),
            const SizedBox(
              height: 20,
            ),
            TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: dico.copyWith(
                  hintText: "Entar your password",
                )),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(BTNgreen),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text(
                "Register",
                style: TextStyle(fontSize: 19),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do not have an account ? ",
                    style: TextStyle(fontSize: 20))
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: Text("sgin in",
                  style: TextStyle(color: BTNgreen, fontSize: 20)),
            )
          ],
        )),
      )),
    ));
  }
}
