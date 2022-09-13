import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class detDataa extends StatefulWidget {
  const detDataa({Key? key}) : super(key: key);

  @override
  State<detDataa> createState() => _detDataaState();
}

class _detDataaState extends State<detDataa> {
  /// step -1
  DatabaseReference ref = FirebaseDatabase.instance.ref();

  /// step -2 => Get Data Function
  getData()async{
    final snapshot = await ref.child('product').get();

    if(snapshot.exists){
      print(snapshot.value);
    }else{
      print('No Data Found');
    }
    return snapshot.value;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [

              Text('Product Screen',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
              ///Step-3=> Future Builder => Show Data
              FutureBuilder(
                future: getData(),
                builder: (builder, snapshot){
                  if(!snapshot.hasData){
                    return Center(child: CircularProgressIndicator(),);
                  }else{

                    Map<dynamic, dynamic> map = snapshot.data as Map<dynamic,dynamic>;

                    List<String> name=[];// john, ali
                    List<int> age=[]; //21,25
                    List<String> address =[]; // lake,lahore
                    int count =0;  // 1+1=2

                    map.forEach((key, value) {

                      name.add(value['name']);
                      age.add(value['age']);
                      address.add(value['address']);
                      count++;
                    });
                    return Container(
                      height: 200,
                      width: 400,
                      child: ListView.builder(
                          itemCount: count,
                          itemBuilder: (builder, index){
                            return Card(
                              child: Column(
                                children: [
                                  Text('Name : ${name[index]}'),
                                  Text('age : ${age[index]}'),
                                  Text('address : ${address[index]}'),
                                ],
                              ),
                            );
                          }),
                    );
                  }
                },

              ),


              /// set Data
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: ()async{
                  await ref.child('products').push().set({
                    "ptitle " : "Pizza",
                    "pprice":850,
                    "description" : "Large"
                  });
                },
                child: Text('Set Product Data'),
              )
            ],
          ),
        ));
  }
}