import 'package:birdcatalogue/widgets/common_birds.dart';
import 'package:birdcatalogue/widgets/common_birds_title.dart';
import 'package:flutter/material.dart';

import 'package:birdcatalogue/widgets/homepage_app_title.dart';
import 'package:birdcatalogue/widgets/bird_of_the_day.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF3F8),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 10,
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              AppTitle(),
              BirdOfTheDay(),
              CommonBirdsSectionTitle(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CommonBirds(),
                    CommonBirds(),
                    CommonBirds(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
