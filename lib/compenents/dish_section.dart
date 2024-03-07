import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class DishSection extends StatelessWidget {
  final int index;

  const DishSection({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        "Family combo",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: CustomTheme.secondaryHeadingColor,
        ),
      ),
      initiallyExpanded: index == 0 ? true : false,
      collapsedIconColor: CustomTheme.secondaryHeadingColor,
      iconColor: Colors.white,
      tilePadding: EdgeInsets.symmetric(horizontal: 20),
      childrenPadding: EdgeInsets.symmetric(horizontal: 20),
      children: List.generate(
        5,
        (index) {
          return Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Faker().food.dish(),
                        style: TextStyle(
                            color: CustomTheme.secondaryHeadingColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(Faker().food.dish()),
                      Text(Faker().food.dish()),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
