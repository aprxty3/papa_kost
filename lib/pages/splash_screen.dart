import 'package:flutter/material.dart';
import 'package:papa_kost/pages/home_page.dart';
import 'package:papa_kost/theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 30,
          right: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Find your Cozy House \nto Stay and Happy \non Papa Kost',
              style: TopStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Stop membuang banyak waktu \npada tempat yang tidak habitable',
              style: MedStyle,
            ),
          ],
        ),
      );
    }

    Widget explorebutton() {
      return Padding(
        padding: const EdgeInsets.only(top: 40, left: 30),
        child: Container(
          width: 210,
          height: 50,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xff5843BE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => homepage(),
                ),
              );
            },
            child: Text(
              'Explore Now',
              style: TBtStyle,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Stack(
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
          ),
          Image.asset(
            'assets/splash_image.png',
            height: 375,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              explorebutton(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
