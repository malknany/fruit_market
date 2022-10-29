import 'package:flutter/material.dart';

import 'modle.dart';

class ComboController {
  int count = 0;
  List<ComboModel> combos = [
    ComboModel(
        image:
            'assets/image/Honey-Lime-Peach-Fruit-Salad-3-725x725-1-removebg-preview 1.png',
        title: 'Honey lime combo',
        price: '2,000',
        color: Colors.white),
    ComboModel(
        image:
            'assets/image/Glowing-Berry-Fruit-Salad-8-720x720-removebg-preview 1.png',
        title: 'Berry mango combo',
        price: '8,000',
        color: Colors.white),
    ComboModel(
        image:
            'assets/image/breakfast-quinoa-and-red-fruit-salad-134061-1-removebg-preview 1.png',
        title: 'Quinoa fruit salad',
        price: '10,000',
        color: const Color(0xffFFFAEB)),
    ComboModel(
        image:
            'assets/image/Best-Ever-Tropical-Fruit-Salad8-WIDE-removebg-preview 1.png',
        title: 'Tropical fruit salad',
        price: '10,000',
        color: const Color(0xffFEF0F0)),
    ComboModel(
        image:
            'assets/image/BerryWorld-Kiwiberry-Fruit-Salad-LS-removebg-preview 1.png',
        title: 'melon fruit salad',
        price: '10,000',
        color: const Color(0xffF1EFF6)),
  ];
}
