import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:flutter/material.dart';

class BirdOfTheDay extends StatefulWidget {
  @override
  _BirdOfTheDayState createState() => _BirdOfTheDayState();
}

class _BirdOfTheDayState extends State<BirdOfTheDay> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Card(
        elevation: 0,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Theme.of(context).splashColor,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/spotlight.jpg',
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.black.withOpacity(0.05),
                padding: EdgeInsets.only(
                  right: 164,
                  left: 16,
                  top: 12,
                  bottom: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Learn more about',
                      style: Theme.of(context).textTheme.headline3.copyWith(
                            color: appTheme().accentColor,
                          ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Blue-headed bee-eater',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            color: appTheme().splashColor,
                          ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Merops muelleri',
                      style: Theme.of(context).textTheme.headline3.copyWith(
                            color: appTheme().splashColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
