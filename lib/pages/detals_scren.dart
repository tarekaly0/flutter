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
              Row(children: [
                Icon(Icons.star,size: 26,color: Color.fromARGB(255, 255, 191, 0),
                ),
                 Icon(Icons.star,size: 26,color: Color.fromARGB(255, 255, 191, 0),
                ),
                 Icon(Icons.star,size: 26,color: Color.fromARGB(255, 255, 191, 0),
                ),
                 Icon(Icons.star,size: 26,color: Color.fromARGB(255, 255, 191, 0),
                ),
                 Icon(Icons.star,size: 26,color: Color.fromARGB(255, 255, 191, 0),
                ),
              ],
              ),
              SizedBox(width: 61,),
              Row(children: [
                Icon(Icons.edit_location,
                size: 26,
                color: Color.fromARGB(168, 3, 65, 27),
                ),
                SizedBox(width: 3,),
                Text("TArek Shop",
                style: TextStyle(fontSize: 19),),
              ],
              )
          ],
              ),
              SizedBox(height: 13,),
              SizedBox(width: double.infinity,
              child: Text(
                "Details :",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
              ),
              SizedBox(height: 16,),
              Text( "offers you one of the best products for the bed that adds to your home a special special corner. Arikaty is the best manufacturer of magic corner bed in a simple modern unique shape, and the corner bed is ideal for people who want to be flexible, and the materials in the seats are distinguished Anatomical features. Designed for teens to share their moments of happiness with a relaxed touch. An excellent corner from Arikaty is perfect for you if you're watching T.V, playing video games or studying and being perfect in a restful sleep.", style: TextStyle(fontSize: 16),
              maxLines: ismore ?3 : null,
              overflow: TextOverflow.fade,),

              
            )
          ],

        )
      ],
    )),
    )
  }
}
