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
      const  SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.name,
              style: KostStyle,
            ),
          const  SizedBox(
              height: 4,
            ),
            Text(
              tips.date,
              style: LocStyle,
            ),
          ],
        ),
      const  Spacer(),
        IconButton(
          onPressed: () {},
          icon:const Icon(
            Icons.chevron_right,
            color: Color(0xffC9C9C9),
          ),
        ),
      ],
    );
  }
}
