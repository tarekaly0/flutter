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
    ),)
  }
}
