import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/model/item.dart';

class Prov with ChangeNotifier {
  List selcectedprodict = [];
  int price = 0;
  add(Item pro) {
    selcectedprodict.add(pro);
    price += pro.price.round();
    notifyListeners();
  }

  delete(Item pro) {
    selcectedprodict.remove(pro);
    price -= pro.price.round();
    notifyListeners();
  }

  get itemCount {
    return selcectedprodict.length;
  }
}
