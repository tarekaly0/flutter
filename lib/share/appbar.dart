import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/provider/provider.dart';

class PROandPRI extends StatelessWidget {
  const PROandPRI({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Prov>(context);
    return Row(children:[
      stack(
        children; [
          positioned(
            bottom: 21,
            child: container(
              child: Text("${classInstancee.itemscount}",
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              padding(
                padding:const EdgeInsets.only(right:10),
              )

              )
            )
          ),
        ]
      );
  }
}
