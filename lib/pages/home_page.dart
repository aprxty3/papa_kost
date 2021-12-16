import 'package:flutter/material.dart';
import 'package:papa_kost/model/re_model.dart';
import 'package:papa_kost/model/tng_model.dart';
import 'package:papa_kost/provider/recom_provider.dart';
import 'package:papa_kost/theme.dart';
import 'package:papa_kost/widget/bottomnav.dart';
import 'package:papa_kost/widget/kota_card.dart';
import 'package:papa_kost/model/ko_model.dart';
import 'package:papa_kost/widget/recom_card.dart';
import 'package:papa_kost/widget/tng.dart';
import 'package:provider/provider.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var recomProv = Provider.of<RecomProv>(context);

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 24,
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Now',
              style: TopStyle,
            ),
            const SizedBox(
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
          const SizedBox(
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
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 24,
                ),
                KoCart(
                  Kota(
                    // id: 1,
                    name: 'Jakarta',
                    imageUrl: 'assets/city1.png',
                  ),
                ),
                const SizedBox(
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
                const SizedBox(
                  width: 20,
                ),
                KoCart(
                  Kota(
                    // id: 3,
                    name: 'Surabaya',
                    imageUrl: 'assets/city3.png',
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                KoCart(
                  Kota(
                    // id: 3,
                    name: 'Palembang',
                    imageUrl: 'assets/city4.png',
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                KoCart(
                  Kota(
                    // id: 3,
                    name: 'Aceh',
                    imageUrl: 'assets/city5.png',
                    isPopuler: true,
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                KoCart(
                  Kota(
                    // id: 3,
                    name: 'Bogor',
                    imageUrl: 'assets/city6.png',
                  ),
                ),
                const SizedBox(
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
        child: FutureBuilder(
          future: recomProv.getRecomSpace(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Recom> data = snapshot.data;

              int index = 0;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: data.map((item) {
                  index++;
                  return Container(
                    margin: EdgeInsets.only(top: index == 1 ? 0 : 30),
                    child: ReCard(item),
                  );
                }).toList(),
                //[
                // Text(
                //   'Recommended Space',
                //   style: RTTGStyle,
                // ),
                // SizedBox(
                //   height: 16,
                // ),
                // ReCard(
                //   Recom(
                //     image_url: 'assets/space1.png',
                //     rating: 4,
                //     name: 'Kuretakeso Hott',
                //     price: 400,
                //     city: 'Bandung, Germany',
                //   ),
                // ),
                // SizedBox(
                //   height: 30,
                // ),
                // ReCard(
                //   Recom(
                //     image_url: 'assets/space2.png',
                //     rating: 5,
                //     name: 'Roemah Nenek',
                //     price: 250,
                //     city: 'Seattle, Bogor',
                //   ),
                // ),
                // SizedBox(
                //   height: 30,
                // ),
                // ReCard(
                //   Recom(
                //     image_url: 'assets/space3.png',
                //     rating: 3,
                //     name: 'Darrling How',
                //     price: 520,
                //     city: 'Jakarta',
                //   ),
                // ),
                //],
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
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
            const SizedBox(
              height: 16,
            ),
            TnG(
              Tips(
                imageUrl: 'assets/tips1.png',
                name: 'City Guidelines',
                date: 'Updated 20 Apr',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TnG(
              Tips(
                imageUrl: 'assets/tips2.png',
                name: 'Jakarta Fairship',
                date: 'Updated 11 Dec',
              ),
            ),
            const SizedBox(
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
            color: const Color(0xffF6F7F8),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              popularCity(),
              recom(),
              tng(),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: bottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
