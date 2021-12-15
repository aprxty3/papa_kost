import 'package:flutter/material.dart';
import 'package:papa_kost/model/re_model.dart';
import 'package:papa_kost/pages/error_page.dart';
import 'package:papa_kost/pages/home_page.dart';
import 'package:papa_kost/pages/map.dart';
import 'package:papa_kost/pages/user.dart';
import 'package:papa_kost/theme.dart';
import 'package:papa_kost/widget/facility.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Recom recom;

  DetailPage(this.recom);

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ErrorPage()),
        );
      }
    }

    Widget header() {
      return Stack(
        children: [
          Image.network(
            recom.image_url,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homepage()),
                    );
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 24,
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
                                recom.name,
                                style: BoardingName,
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: '\$${recom.price}',
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
                              SizedBox(
                                width: 24,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Main Facilities',
                        style: Facilities,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FacilityItem(
                            imageUrl: 'assets/icon_kitchen.png',
                            capacity: recom.number_of_kitchens,
                            name: 'Kitchen',
                          ),
                          FacilityItem(
                            imageUrl: 'assets/icon_bedroom.png',
                            capacity: recom.number_of_bedrooms,
                            name: 'Bedroom',
                          ),
                          FacilityItem(
                            imageUrl: 'assets/icon_cupboard.png',
                            capacity: recom.number_of_cupboards,
                            name: 'Cupboard',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Column(
                        children: [
                          Text(
                            'Photos',
                            style: Facilities,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: recom.photos.map((item) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              item,
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList()
                          //       [
                          //         SizedBox(
                          //           width: 24,
                          //         ),
                          //         Image.asset(
                          //           'assets/photo1.png',
                          //           width: 110,
                          //           height: 88,
                          //           fit: BoxFit.cover,
                          //         ),
                          //         SizedBox(
                          //           width: 18,
                          //         ),
                          //         Image.asset(
                          //           'assets/photo2.png',
                          //           width: 110,
                          //           height: 88,
                          //           fit: BoxFit.cover,
                          //         ),
                          //         SizedBox(
                          //           width: 18,
                          //         ),
                          //         Image.asset(
                          //           'assets/photo3.png',
                          //           width: 110,
                          //           height: 88,
                          //           fit: BoxFit.cover,
                          //         ),
                          //         SizedBox(
                          //           width: 24,
                          //         ),
                          //       ],
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: Facilities,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${recom.address} \n ${recom.city}, ${recom.country}',
                                style: Locations,
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              // launchUrl(
                              //     'https://goo.gl/maps/SyZx2yjWB1yR6AeH8');

                              launchUrl(recom.map_url);

                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => MapG()),
                              // );
                            },
                            child: Image.asset(
                              'assets/btn_map.png',
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 327,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff5843BE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    onPressed: () {
                      launchUrl('tel:${recom.phone}');
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => CallUser()),
                      // );
                    },
                    child: Text(
                      'Book Now',
                      style: TBtStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
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
