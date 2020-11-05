import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:flutter/material.dart';

class CommonBirdsSectionTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 48, left: 6, bottom: 12),
      child: Text(
        'Common Birds in Kenya',
        style: Theme.of(context).textTheme.headline2.copyWith(
              color: appTheme().textSelectionColor,
            ),
      ),
    );
  }
}
