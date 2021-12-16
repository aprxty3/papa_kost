import 'package:flutter/material.dart';
import 'package:papa_kost/model/re_model.dart';
import 'package:papa_kost/pages/error_page.dart';
import 'package:papa_kost/pages/home_page.dart';

import 'package:papa_kost/theme.dart';
import 'package:papa_kost/widget/facility.dart';
import 'package:papa_kost/widget/rate.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final Recom recom;

  DetailPage(this.recom);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        // throw (url);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    Widget header() {
      return Stack(
        children: [
          Image.network(
            widget.recom.image_url,
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
        ],
      );
    }

    Widget button() {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
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
              ),
            ),
            // Image.asset(
            //   'assets/btn_wishlist.png',
            //   width: 40,
            // ),
            InkWell(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: Image.asset(
                isClicked
                    ? 'assets/btn_wishlist_active.png'
                    : 'assets/btn_wishlist.png',
                width: 40,
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          const SizedBox(
            height: 328,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
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
                    right: 12,
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
                                widget.recom.name,
                                style: BoardingName,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: '\$${widget.recom.price}',
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
                            children: [1, 2, 3, 4, 5].map((index) {
                              return Container(
                                // padding: EdgeInsets.only(left: 12),
                                margin: const EdgeInsets.only(right: 2),
                                child: RateItem(
                                  index: index,
                                  rating: widget.recom.rating,
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
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
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FacilityItem(
                            imageUrl: 'assets/icon_kitchen.png',
                            capacity: widget.recom.number_of_kitchens,
                            name: 'Kitchen',
                          ),
                          FacilityItem(
                            imageUrl: 'assets/icon_bedroom.png',
                            capacity: widget.recom.number_of_bedrooms,
                            name: 'Bedroom',
                          ),
                          FacilityItem(
                            imageUrl: 'assets/icon_cupboard.png',
                            capacity: widget.recom.number_of_cupboards,
                            name: 'Cupboard',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
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
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: widget.recom.photos.map((item) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
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
                const SizedBox(
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
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${widget.recom.address} \n ${widget.recom.city}, ${widget.recom.country}',
                                style: Locations,
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              // launchUrl(
                              //     'https://goo.gl/maps/SyZx2yjWB1yR6AeH8');

                              launchUrl(widget.recom.map_url);

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
                const SizedBox(
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
                      launchUrl('tel:${widget.recom.phone}');
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
                const SizedBox(
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
        child: Stack(
          children: [
            header(),
            content(),
            button(),
          ],
        ),
      ),
    );
  }
}
