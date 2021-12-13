import 'package:flutter/material.dart';
import 'package:papa_kost/theme.dart';

class FacilityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/icon_kitchen.png',
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '2',
            style: Facilities1,
            children: [
              TextSpan(
                text: ' Kitchen',
                style: Facilities2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
