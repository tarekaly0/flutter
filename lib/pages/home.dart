import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 2 / 3),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Details(product: items[index])),
          );
        },
        child: GridTile(
                child: Stack(children: [
                  Positioned(
                    bottom: -9,
                    top: -2.5,
                    right: 0,
                    left: 0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(55),
                        child: Image.asset(items[index].imgpath)),
                    ),
                ]),
                footer: GridTileBar(
                  trailing: IconButton (
                      color: Color.fromARGB(255, 62, 94, 70),
                      onPressed: () { 
                        classInstancee.add(items[index]);
                       },
                       icon: Icon(Icons.add)),
                      leading: Text("\$12.99"),
                      title: Text(
                        ""
                      ),
                       ),
                ),

          );
  }),
  drawer: Drawer(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/Untitled.png"),
                  fit: BoxFit.cover),
                  currentAccountPictureSize: Size.square(80),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage(
                        "assets/img/123.jpg")),
                        accountEmail :Text("Tarek@yahoo.com")
                        accountName: Text("Tarek Mesho"
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        )
                      ),

            ),
            ListTile(
              
            )
          ],
        )
      ],
    ),
    
  ),
        );
      },
    ;
  }

