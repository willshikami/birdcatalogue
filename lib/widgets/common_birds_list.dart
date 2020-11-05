import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class CommonBirdsList extends StatefulWidget {
  _CommonBirdsListState createState() => _CommonBirdsListState();
}

class _CommonBirdsListState extends State<CommonBirdsList> {
  @override
  Widget build(BuildContext context) {
    return Container();
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
    //               return Expanded(
    //                 child: Text(''),
    //               );
    //             });
    //   },
    // );
  }
}
