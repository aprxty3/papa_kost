import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        children: [
          Image.asset(
            'assets/thumbnail.png',
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 24,
              right: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/btn_back.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                Image.asset(
                  'assets/btn_wishlist.png',
                  width: 40,
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return ListView(
        children: [
          SizedBox(
            height: 328,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            // color: Colors.green,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: Colors.white,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            header(),
            content(),
          ],
        ),
      ),
    );
  }
}
