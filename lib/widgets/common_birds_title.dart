import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:flutter/material.dart';

class CommonBirdsSectionTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 48, left: 6, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Common Birds in Kenya',
            style: Theme.of(context).textTheme.headline2.copyWith(
                  color: appTheme().textSelectionColor,
                ),
          ),
          MaterialButton(
            elevation: 0,
            color: appTheme().splashColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
              child: Text(
                'MORE',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: appTheme().accentColor,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
