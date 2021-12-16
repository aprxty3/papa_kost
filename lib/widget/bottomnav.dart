import 'package:flutter/material.dart';

class BotItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  BotItem({
    this.imageUrl,
    this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            imageUrl,
            width: 26,
            height: 26,
          ),
        ),
      const  Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 4,
                decoration:const BoxDecoration(
                  color: Color(0xff7F74EB),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
