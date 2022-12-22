import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body:GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 2 / 3),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector()
            ));
  }
}
