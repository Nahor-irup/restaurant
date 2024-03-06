import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/compenents/advertise_section.dart';
import 'package:restaurant/compenents/custom_rounded_button.dart';
import 'package:restaurant/theme.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Image.asset(
                  "assets/img/restaurant.jpeg",
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(top: 200),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(24)),
                      color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mandy Kitchen's Chief",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: CustomTheme.secondaryHeadingColor,
                            ),
                          ),
                          Icon(
                            Icons.favorite_border_outlined,
                            size: 24,
                            color: CustomTheme.primaryColor,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7, bottom: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "3rd lane. Bhaktapur Nepal",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: CustomTheme.textColor,
                              ),
                            ),
                            SizedBox(width: 15),
                            Transform.rotate(
                              angle: 180 * pi / 180,
                              child: Icon(
                                Icons.air,
                                color: CustomTheme.primaryColor,
                              ),
                            ),
                            Icon(
                              Icons.access_time_filled,
                              color: CustomTheme.primaryColor,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "25 - 30 min",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: CustomTheme.textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Icon(
                            Icons.stars_rounded,
                            color: CustomTheme.primaryColor,
                            size: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              text: " 4.2",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: CustomTheme.primaryColor,
                              ),
                              children: [
                                TextSpan(
                                  text: " (500+ ratings)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: CustomTheme.textColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            "More info",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomTheme.secondaryHeadingColor,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: CustomTheme.secondaryHeadingColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.motorcycle_outlined,
                            color: CustomTheme.primaryColor,
                            size: 20,
                          ),
                          Text(
                            " 1.4 km",
                            style: TextStyle(
                              color: CustomTheme.textColor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      CustomRoundedButton(
                        label: "Schedule",
                        prefixIcon: CupertinoIcons.calendar,
                      ),
                      SizedBox(height: 15),
                      AdvertiseSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
            ),
            child: SliverList.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ExpansionTile(
                  title: Text("Family combo"),
                  initiallyExpanded: index==0?true:false,
                  tilePadding: EdgeInsets.symmetric(horizontal: 20),
                  childrenPadding: EdgeInsets.symmetric(horizontal: 20),
                  children: List.generate(5, (index) {
                      return Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Row(
                            children: [
                              ClipRRect(
                                child: Image.network(
                                  Faker().image.image(
                                    random: true,
                                    keywords: ["food"],
                                  ),
                                  fit: BoxFit.cover,
                                  height: 94,
                                  width: 84,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
