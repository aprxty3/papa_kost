import 'package:flutter/material.dart';
import 'package:papa_kost/theme.dart';
import 'package:papa_kost/widget/kota_cart.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
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
      );
    }

    Widget popularCity() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Popular Cities',
            style: RTTGStyle,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                KoCart(),
                KoCart(),
                KoCart(),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            top: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              popularCity(),
            ],
          ),
        ),
      ),
    );
  }
}
