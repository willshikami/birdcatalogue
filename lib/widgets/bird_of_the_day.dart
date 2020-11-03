import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:flutter/material.dart';

class BirdOfTheDay extends StatefulWidget {
  @override
  _BirdOfTheDayState createState() => _BirdOfTheDayState();
}

class _BirdOfTheDayState extends State<BirdOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Theme.of(context).splashColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/spotlight.jpg',
            fit: BoxFit.fill,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
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
                  height: 16,
                ),
                Text(
                  'Blue-headed bee-eater',
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        color: appTheme().textSelectionColor,
                      ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Merops muelleri',
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        color: appTheme().textSelectionHandleColor,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
