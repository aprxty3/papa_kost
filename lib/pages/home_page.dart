import 'package:flutter/material.dart';
import 'package:papa_kost/model/re_model.dart';
import 'package:papa_kost/theme.dart';
import 'package:papa_kost/widget/kota_card.dart';
import 'package:papa_kost/model/ko_model.dart';
import 'package:papa_kost/widget/recom_card.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Now',
              style: TopStyle,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Mencari kosan yang cozy',
              style: MedStyle,
            ),
          ],
        ),
      );
    }

    Widget popularCity() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Text(
              'Popular Cities',
              style: RTTGStyle,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 24,
                ),
                KoCart(
                  Kota(
                    // id: 1,
                    name: 'Jakarta',
                    imageUrl: 'assets/city1.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                KoCart(
                  Kota(
                    // id: 2,
                    name: 'Bandung',
                    imageUrl: 'assets/city2.png',
                    isPopuler: true,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                KoCart(
                  Kota(
                    // id: 3,
                    name: 'Surabaya',
                    imageUrl: 'assets/city3.png',
                  ),
                ),
                SizedBox(
                  width: 24,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget recom() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommended Space',
              style: RTTGStyle,
            ),
            SizedBox(
              height: 16,
            ),
            ReCard(
              Recom(
                  imageUrl: 'assets/space1.png',
                  bintang: '4/5',
                  name: 'Kuretakeso Hott',
                  price: 52,
                  bulan: ' / Month',
                  location: 'Bandung, Germany'),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            popularCity(),
            recom(),
          ],
        ),
      ),
    );
  }
}
