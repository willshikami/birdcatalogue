// import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CommonBirdsList extends StatefulWidget {
  _CommonBirdsListState createState() => _CommonBirdsListState();
}

class _CommonBirdsListState extends State<CommonBirdsList> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('birds').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final loadedData = snapshot.data.docs;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: loadedData.map((doc) {
              Size size = MediaQuery.of(context).size;
              final listName = doc.data()['birdName'];
              final imgUrl = doc.data()['imageUrl'];
              final scienceName = doc.data()['scientificName'];
              return Container(
                child: InkWell(
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
                          CachedNetworkImage(
                            height: size.width * 0.4,
                            fit: BoxFit.fill,
                            imageUrl: imgUrl,
                            errorWidget: (context, url, error) => Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 42,
                                  ),
                                  Icon(
                                    Icons.image,
                                    size: 36,
                                    color: appTheme().textSelectionHandleColor,
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Cant find the image',
                                    style: TextStyle(
                                        color: appTheme()
                                            .textSelectionHandleColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  listName,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .copyWith(
                                        color: appTheme().textSelectionColor,
                                      ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  scienceName,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(
                                        color:
                                            appTheme().textSelectionHandleColor,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
