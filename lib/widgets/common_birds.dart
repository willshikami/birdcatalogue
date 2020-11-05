import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:flutter/material.dart';

class CommonBirds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      child: Card(
        elevation: 0,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Theme.of(context).splashColor,
        child: Container(
          width: size.width * 0.4,
          // height: size.width * 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/spotlight.jpg',
                fit: BoxFit.fill,
                // height: size.width * 0.45,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blue-headed bee-eater',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: appTheme().textSelectionColor,
                          ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Merops muelleri',
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: appTheme().textSelectionHandleColor,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
