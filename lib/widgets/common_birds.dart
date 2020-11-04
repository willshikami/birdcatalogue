import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:flutter/material.dart';

import 'common_birds_list.dart';

class CommonBirds extends StatefulWidget {
  _CommonBirdsState createState() => _CommonBirdsState();
}

class _CommonBirdsState extends State<CommonBirds> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Common birds title
        Container(
          margin: EdgeInsets.only(top: 24, left: 6),
          child: Text(
            'Common Birds in Kenya',
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: appTheme().textSelectionColor,
                ),
          ),
        ),
        CommonBirdsList(),
      ],
    );
  }
}
