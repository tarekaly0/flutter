import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application/provider/provider.dart';
import 'package:flutter_application/share/appbar.dart';
import 'package:flutter_application/share/colors.dart';

class check extends StatelessWidget {
  const check({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = provider.of<Prov>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("check out"),
        actions: [PROandPRI()],
      ),
      body: Column(children: [
        SingleChildScrollView(child: SizedBox(height: 600, ),)
      ]),
    )
  }
}
