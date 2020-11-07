import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'package:birdcatalogue/constants/apptheme.dart';

class AppTitle extends StatefulWidget {
  _AppTitleState createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  final thisDay = DateFormat.EEEE().format(DateTime.now());
  final thisMonth = DateFormat.MMMM().format(DateTime.now());
  final thisDate = DateFormat.d().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //The day
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: Theme.of(context).textTheme.headline1.copyWith(
                      color: appTheme().textSelectionColor,
                    ),
              ),
              InkWell(
                child: Icon(
                  CupertinoIcons.search,
                  size: 32,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          //The date
          Row(
            children: [
              Text(
                '$thisDay,',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                thisDate,
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                thisMonth,
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
