

import 'package:flutter/material.dart';
import 'package:papa_kost/theme.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final int capacity;
  final String imageUrl;

  FacilityItem({this.name, this.imageUrl, this.capacity});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
      const  SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$capacity',
            style: Facilities1,
            children: [
              TextSpan(
                text: ' $name',
                style: Facilities2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
