import 'package:flutter/material.dart';
import 'package:papa_kost/model/re_model.dart';
import 'package:papa_kost/pages/detail_page.dart';
import 'package:papa_kost/theme.dart';

class ReCard extends StatelessWidget {
  final Recom recom;

  ReCard(this.recom);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(recom),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.network(
                    recom.image_url,
                    width: 130,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration:const BoxDecoration(
                        color: Color(0xff5843BE),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                            Text(
                              '${recom.rating}/5',
                              style: Rate,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        const  SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recom.name,
                style: KostStyle,
              ),
           const   SizedBox(
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
           const   SizedBox(
                height: 16,
              ),
              Text(
                '${recom.city}, ${recom.country}',
                style: LocStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
