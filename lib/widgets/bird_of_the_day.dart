import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BirdOfTheDay extends StatefulWidget {
  @override
  _BirdOfTheDayState createState() => _BirdOfTheDayState();
}

class _BirdOfTheDayState extends State<BirdOfTheDay> {
  final thisDay = DateTime.now();
  final DateTime tomorrow = DateTime.now().add(
    Duration(days: 1),
  );
  @override
  Widget build(BuildContext context) {
    final today = thisDay.day;
    final yesterday = tomorrow.day - 2;
    print('YESTERDAY: $yesterday');
    print('TODAY: $today');
    // Size size = MediaQuery.of(context).size;
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('birds').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          // final index;
          //   final loadedData = snapshot.data.docs.where((element) => false)
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
                            style:
                                Theme.of(context).textTheme.headline3.copyWith(
                                      color: appTheme().accentColor,
                                    ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Blue-headed bee-eater',
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.headline2.copyWith(
                                      color: appTheme().splashColor,
                                    ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Merops muelleri',
                            style:
                                Theme.of(context).textTheme.headline3.copyWith(
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
        });
  }
}
