import 'package:flutter/material.dart';
import 'package:papa_kost/model/tng_model.dart';
import 'package:papa_kost/theme.dart';

class TnG extends StatelessWidget {
  final Tips tips;

  TnG(this.tips);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageUrl,
          width: 80,
          height: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.name,
              style: KostStyle,
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              tips.date,
              style: LocStyle,
            ),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_right,
            color: Color(0xffC9C9C9),
          ),
        ),
      ],
    );
  }
}
