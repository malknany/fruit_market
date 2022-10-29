import 'package:flutter/material.dart';

class ComboModel {
  String image, title, price, pack;
  Color color;
  ComboModel(
      {required this.image,
      required this.title,
      required this.price,
      required this.color,
      this.pack = '2packs'});
}
