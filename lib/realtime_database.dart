import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
class RealtimeData extends StatelessWidget {
  const RealtimeData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RealtimeDataSTF(),
    );
  }
}
class RealtimeDataSTF extends StatefulWidget {
  const RealtimeDataSTF({Key? key}) : super(key: key);

  @override
  State<RealtimeDataSTF> createState() => _RealtimeDataSTFState();
}

class _RealtimeDataSTFState extends State<RealtimeDataSTF> {
  DatabaseReference database = FirebaseDatabase.instance.ref();
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ElevatedButton(
          onPressed: () async{
            ///product 1
            await database.child("Products").child(_auth.currentUser!.uid).set({
              "name": "Shalis Perfume",
              "price": "11250" ,
              "Description": "Blossom scent",
              "Variants":{
                "S1": "Small",
                "S2": "Medium" ,
                "S3": "Large",
              }
            });
          },
          child: Text('Submit database'),

        ),
      ),
    );
  }
}
