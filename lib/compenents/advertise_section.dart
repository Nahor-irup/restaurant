import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class AdvertiseSection extends StatefulWidget {
  const AdvertiseSection({Key? key}) : super(key: key);

  @override
  State<AdvertiseSection> createState() => _AdvertiseSectionState();
}

class _AdvertiseSectionState extends State<AdvertiseSection> {
  int totalCount = 3;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return Container(
          color: Color(0xFFFFEAE9),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10),
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: Icon(
                  Icons.star_outline_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UPTO",
                      style: TextStyle(
                        color: CustomTheme.textColor,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                    Text(
                      "40% OFF",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: CustomTheme.textColor,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${currentIndex + 1}/${totalCount}",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: CustomTheme.secondaryHeadingColor,
                    ),
                  ),
                  Row(
                    children: List.generate(
                      totalCount,
                      (index) => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 8,
                        width: 8,
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == currentIndex
                              ? CustomTheme.primaryColor
                              : Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: 70,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 1),
        onPageChanged: (index, reason) {
          setState(() {});
          currentIndex = index;
        },
      ),
    );
  }
}
