import 'package:flutter/material.dart';
import 'package:papa_kost/model/re_model.dart';
import 'package:papa_kost/model/tng_model.dart';
import 'package:papa_kost/theme.dart';
import 'package:papa_kost/widget/bottomnav.dart';
import 'package:papa_kost/widget/kota_card.dart';
import 'package:papa_kost/model/ko_model.dart';
import 'package:papa_kost/widget/recom_card.dart';
import 'package:papa_kost/widget/tng.dart';

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
                location: 'Bandung, Germany',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ReCard(
              Recom(
                imageUrl: 'assets/space2.png',
                bintang: '5/5',
                name: 'Roemah Nenek',
                price: 11,
                location: 'Seattle, Bogor',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ReCard(
              Recom(
                imageUrl: 'assets/space3.png',
                bintang: '3/5',
                name: 'Darrling How',
                price: 20,
                location: 'Jakarta, Indonesia',
              ),
            ),
          ],
        ),
      );
    }

    Widget tng() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 24,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tips & Guidance',
              style: RTTGStyle,
            ),
            SizedBox(
              height: 16,
            ),
            TnG(
              Tips(
                imageUrl: 'assets/tips1.png',
                name: 'City Guidelines',
                date: 'Updated 20 Apr',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TnG(
              Tips(
                imageUrl: 'assets/tips2.png',
                name: 'Jakarta Fairship',
                date: 'Updated 11 Dec',
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      );
    }

    Widget bottomNav() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          width: 320,
          height: 65,
          decoration: BoxDecoration(
            color: Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BotItem(
                imageUrl: 'assets/icon_home.png',
                isActive: true,
              ),
              BotItem(
                imageUrl: 'assets/icon_email.png',
                isActive: false,
              ),
              BotItem(
                imageUrl: 'assets/icon_card.png',
                isActive: false,
              ),
              BotItem(
                imageUrl: 'assets/icon_love.png',
                isActive: false,
              ),
            ],
          ),
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
            tng(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: bottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
