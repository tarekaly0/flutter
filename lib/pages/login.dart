import 'package:flutter/material.dart';
import 'package:flutter_application/pages/register.dart';
import 'package:flutter_application/share/colors.dart';
import 'package:flutter_application/share/constant.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 212, 206, 208),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 35,
            ),
            TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: dico.copyWith(hintText: "Entar your email")),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: dico.copyWith(
                  hintText: "Entar your password",
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(BTNgreen),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: Text("sgin in",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 24, 24), fontSize: 16)),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do not have an account? ", style: TextStyle(fontSize: 20))
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Register()),
                );
              },
              child: Text("sgin up",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ]),
        )),
      ),
    );
  }
}
