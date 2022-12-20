import 'package:flutter/material.dart';
import 'package:flutter_application/share/colors.dart';

const dico = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: BTNpink),
  ),
  // fillColor: Colors.red,
  filled: true,
  contentPadding: const EdgeInsets.all(8),
);
