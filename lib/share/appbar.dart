import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/provider/provider.dart';

class PROandPRI extends StatelessWidget {
  const PROandPRI({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Prov>(context);
    return Row(children: [
      Stack(
        children: [
          Positioned(
            bottom: 21,
            child: Container(
              child: Text(
                "${classInstancee.itemscount}",
                style: TextStyle(
                    fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color.fromARGB(211, 164, 255, 193),
                  shape: BoxShape.circle),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => check(),
                    ),
                  );
                },
                icon: Icon(Icons.add_shopping_cart)),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Text(
          "\${classInstancee.price}",
          style: TextStyle(fontSize: 20),
        ),
      ),
    ]);
  }
}
