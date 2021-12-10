import 'package:flutter/material.dart';
import 'package:papa_kost/theme.dart';

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
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/city1.png',
                    width: 120,
                    height: 102,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Jakarta',
                    style: KotaStyle,
                  ),
                ],
              ),
            ],
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
