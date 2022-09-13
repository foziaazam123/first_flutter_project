import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class GetUserProfileData extends StatefulWidget {
  const GetUserProfileData({Key? key}) : super(key: key);

  @override
  State<GetUserProfileData> createState() => _GetUserProfileDataState();
}

class _GetUserProfileDataState extends State<GetUserProfileData> {
  DatabaseReference ref = FirebaseDatabase.instance.ref();

  getData() async {
    final snapshot = await ref.child('Products').get();
    if (snapshot.exists) {
      print(snapshot.value);
    } else {
      print('no data found');
      return snapshot.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Text(
                'Product Screen',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            FutureBuilder(
              future: getData(),
              builder: (builder, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  Map<dynamic, dynamic> map =
                      snapshot.data as Map<dynamic, dynamic>;
                  List<String> name = [];
                  List<int> price = [];
                  List<String> description = [];
                  int count = 0;
                  map.forEach((key, value) {
                    name.add(value['name']);
                    price.add(value['price']);
                    description.add(value['description']);
                    count++;
                  });
                  return Container(
                    height: 300,
                    width: 450,
                    child: ListView.builder(
                        itemCount: count,
                        itemBuilder: (builder, index) {
                          return Card(
                            child: Column(
                              children: [
                                Text('Name:  ${name[index]}'),
                                Text('Name:  ${price[index]}'),
                                Text('Name:  ${description[index]}'),
                              ],
                            ),
                          );
                        }),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
