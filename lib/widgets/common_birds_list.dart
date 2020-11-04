import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CommonBirdsList extends StatefulWidget {
  _CommonBirdsListState createState() => _CommonBirdsListState();
}

class _CommonBirdsListState extends State<CommonBirdsList> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream:
          FirebaseFirestore.instance.collection('cranes-allies').snapshots(),
      builder: (context, snapshot) {
        return !snapshot.hasData
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  final data = snapshot.data.docs[index];

                  return Container(
                    // height: 5,
                    child: Text(
                      data[index].birdName,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                });
      },
    );
  }
}
