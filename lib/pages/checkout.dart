import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application/provider/provider.dart';
import 'package:flutter_application/share/appbar.dart';
import 'package:flutter_application/share/colors.dart';
import 'package:provider/provider.dart';

class check extends StatelessWidget {
  const check({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Prov>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("check out"),
        actions: [PROandPRI()],
      ),
      body: Column(children: [
        SingleChildScrollView(child: SizedBox(height: 600,
        child:  ListView.builder(padding: const EdgeInsets.all(8),
        itemCount: classInstancee.selcectedprodict.length,
        itemBuilder: (BuildContext (context, int index)
        {
          return Card(
            child: ListTile(
            Text(classInstancee.selcectedprodict[index].name),
           subtitle Text(
            "$ {classInstancee.selcectedprodict[index].price} "),
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                classInstancee.selcectedprodict[index].imgpath),
            ),
            trailing: IconButton(onPressed:
            (){
              classInstancee.delete(classInstancee.selcectedprodict[index]);
            },
            icon: icon),
              ),
            );
   }  ),
        ),
        ),
ElevatedButton(onPressed: (){},
style: ButtonStyle(
  backgroundColor: MaterialStateProperty.all(BTNpink),
  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8)))
  ),

),
)



      ]),
    )
  }
}
