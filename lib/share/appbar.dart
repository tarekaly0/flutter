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
              )),
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
