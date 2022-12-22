import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/model/item.dart';
import 'package:flutter_application/share/appbar.dart';

import '../share/colors.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool ismore = true;
  @override
  Widget  build(Buildcontext){
    return Scaffold(appBar: AppBar(actions: [PROandPRI()],
    backgroundColor: appbarGreen,
    title: Text("Details screen"),
    ),
    body: SingleChildScrollView(child: Column(
      children: [
        Image.asset(widget.product.imgpath),
        SizedBox(
          height: 11,
        ),
        Row(
          mainAxisAlignment:  MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(4),
              child: Text("New", style: TextStyle(fontSize: 15),),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 129, 120),
                borderRadius: BorderRadius.circular(4),
              )),
              SizedBox(width: 9,),
              ),

              
            )
          ],

        )
      ],
    )),
    )
  }
}
