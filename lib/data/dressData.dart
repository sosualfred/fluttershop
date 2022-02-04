import 'dart:math';

import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:shop/models/dress.dart';

int itemsCount = 10;
List<Dress> dresses = [];
Random random = Random();

List<Dress> generateDresses() {
  for (var i = 0; i < itemsCount; i++) {
    dresses.add(
      Dress(
        title: lorem(words: 3, paragraphs: 1),
        imageUrl: "https://picsum.photos/${random.nextInt(400) + 200}",
        price: 200,
        description: lorem(),
      ),
    );
  }

  return dresses;
}
