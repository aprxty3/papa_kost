import 'package:flutter/material.dart';
import 'package:papa_kost/theme.dart';

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
            // height: 200,
            // color: Colors.green,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 24,
                right: 24,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kuretakeso Hott',
                            style: BoardingName,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text.rich(
                            TextSpan(
                              text: '\$52',
                              style: PriceStyle,
                              children: [
                                TextSpan(
                                  text: ' / Month',
                                  style: MonthStyle,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon_star.png',
                            width: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Image.asset(
                            'assets/icon_star.png',
                            width: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Image.asset(
                            'assets/icon_star.png',
                            width: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Image.asset(
                            'assets/icon_star.png',
                            width: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Image.asset(
                            'assets/icon_star_grey.png',
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Main Facilities',
                        style: Facilities,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icon_kitchen.png',
                                width: 32,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: '2',
                                  style: Facilities1,
                                  children: [
                                    TextSpan(
                                      text: ' Kitchen',
                                      style: Facilities2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icon_bedroom.png',
                                width: 32,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: '3',
                                  style: Facilities1,
                                  children: [
                                    TextSpan(
                                      text: ' Bedroom',
                                      style: Facilities2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/icon_cupboard.png',
                                width: 32,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: '3',
                                  style: Facilities1,
                                  children: [
                                    TextSpan(
                                      text: ' Lemari',
                                      style: Facilities2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
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
