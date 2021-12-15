import 'package:flutter/material.dart';

class RateItem extends StatelessWidget {
  final int index;
  final int rating;

  RateItem({this.index, this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating ? 'assets/icon_star.png' : 'assets/icon_star_grey.png',
      width: 20,
    );
  }
}
