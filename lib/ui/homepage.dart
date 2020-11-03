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
            horizontal: 28,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTitle(),
              BirdOfTheDay(),
            ],
          ),
        ),
      ),
    );
  }
}
