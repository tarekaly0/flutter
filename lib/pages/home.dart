import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/model/item.dart';
import 'package:flutter_application/pages/checkout.dart';
import 'package:flutter_application/pages/detals_scren.dart';
import 'package:flutter_application/share/appbar.dart';
import 'package:flutter_application/share/colors.dart';
import 'package:flutter_application/provider/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Prov>(context);
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
            return GestureDetector(
              onTap: () {
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
                  trailing: IconButton(
                      color: Color.fromARGB(255, 62, 94, 70),
                      onPressed: () {
                        classInstancee.add(items[index]);
                      },
                      icon: Icon(Icons.add)),
                  leading: Text("\$12.99"),
                  title: Text(""),
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
                    ),
                    currentAccountPictureSize: Size.square(80),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/img/123.jpg")),
                    accountEmail: Text("Tarek@yahoo.com"),
                    accountName: Text(
                      "Tarek Mesho",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    )),
                ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("My Products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => check(),
                        ),
                      );
                    }),
                ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {}),
                ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Text("Developed by Tarek © 2022",
                  style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [PROandPRI()],
        backgroundColor: appbarGreen,
        title: Consumer<Prov>(builder: ((context, testt, child) {
          return Text("Home");
        })),
      ),
    );
  }
}
