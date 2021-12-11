import 'package:flutter/material.dart';
import 'package:papa_kost/model/ko_model.dart';
import 'package:papa_kost/theme.dart';

class KoCart extends StatelessWidget {
  final Kota kota;

  KoCart(this.kota);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        width: 120,
        height: 150,
        color: Color(0xffF6F7F8),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  kota.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                kota.isPopuler
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xff5843BE),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              kota.name,
              style: KotaStyle,
            ),
          ],
        ),
      ),
    );
  }
}
