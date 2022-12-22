import 'package:flutter/material.dart';
import 'package:flutter_application/share/colors.dart';
import 'package:flutter_application/share/constant.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 212, 206, 208),
        body: Center(
          child: Padding(padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            height: 35,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            decoration: dico.copyWith(
              hintText: "Entar your email",
            )), 
            const SizedBox(
              height: 30,
            ),
           ElevatedButton(onPressed: () {} ,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNgreen),
              padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )),
              

            ) )  
          ],)) ,
          )),
      ))
  }
}