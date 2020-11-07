// import 'package:birdcatalogue/constants/apptheme.dart';
import 'package:birdcatalogue/constants/apptheme.dart';
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
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final loadedData = snapshot.data.docs;
        return ListView(
          scrollDirection: Axis.vertical,
          children: loadedData.map((doc) {
            Size size = MediaQuery.of(context).size;
            return Container(
              height: size.width * 0.45,
              width: size.width * 0.45,
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
                        Image.asset(
                          '',
                          // doc['documentID'],
                          fit: BoxFit.fill,
                          // height: size.width * 0.45,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '',
                                // doc['birdName'],
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
                                '',
                                // doc['scientificName'],
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
        );

        // return ListView.builder(itemBuilder: (context, index) {
        // return _buildBirdList(context, snapshot.data.docs);
        // return Container(
        //   child: Column(
        //     children: [
        //       Text('ppp'),
        //     ],
        //   ),
        // );
        // });
      },
    );
    // return Container();
    // return StreamBuilder<QuerySnapshot>(
    //   stream:
    //       FirebaseFirestore.instance.collection('cranes-allies').snapshots(),
    //   builder: (context, snapshot) {
    //     // print(snapshot.data.docs);
    //     return !snapshot.hasData
    //         ? Center(
    //             child: CircularProgressIndicator(),
    //           )
    //         : ListView.builder(
    //             shrinkWrap: true,
    //             // physics: ScrollPhysics(),
    //             itemCount: snapshot.data.docs.length,
    //             itemBuilder: (context, index) {
    //               final data = snapshot.data.docs[index]['blackCrownedCrane']
    //                   ['birdName'];
    //               print('=============$data===============');
    //               return CommonBirds(
    //                 // imageUrl: '',
    //                 // birdName: '',
    //                 // scientificName: '',
    //               );
    //             });
    //   },
    // );
  }
}

// Widget getContent(BuildContext context) {
//   return StreamBuilder<QuerySnapshot>(
//     stream: FirebaseFirestore.instance.collection("cranes-allies").snapshots(),
//     builder: (context, snap) {

//       //just add this line
//       if(snap.data == null) return CircularProgressIndicator();

//       return CarouselSlider(
//         enlargeCenterPage: true,
//         height: MediaQuery.of(context).size.height,
//         items: getItems(context, snap.data.docs),
//     );
//     },
//     );
// }

// List<Widget> getItems(BuildContext context, List<DocumentSnapshot>
// docs){
//   return docs.map(
//     (doc) {
//       String content = doc.data["content"];
//       return Text(content);
//     }
//   ).toList();
// }

// Widget _buildBirdList(BuildContext context, DocumentSnapshot document) {
//   Size size = MediaQuery.of(context).size;
//   return InkWell(
//     child: Card(
//       elevation: 0,
//       semanticContainer: true,
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       color: Theme.of(context).splashColor,
//       child: Container(
//         width: size.width * 0.4,
//         // height: size.width * 0.45,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               document['imageUrl'],
//               fit: BoxFit.fill,
//               // height: size.width * 0.45,
//             ),
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     document['birdName'],
//                     overflow: TextOverflow.ellipsis,
//                     style: Theme.of(context).textTheme.bodyText1.copyWith(
//                           color: appTheme().textSelectionColor,
//                         ),
//                   ),
//                   SizedBox(
//                     height: 2,
//                   ),
//                   Text(
//                     document['scientificName'],
//                     style: Theme.of(context).textTheme.bodyText2.copyWith(
//                           color: appTheme().textSelectionHandleColor,
//                         ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
