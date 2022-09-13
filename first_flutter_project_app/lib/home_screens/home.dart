import 'package:calender_picker/date_picker_widget.dart';
import 'package:flutter/material.dart';


import 'edit_profile.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  DateTime dateTime = DateTime.now();

  int days = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Events',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.blue,
                          ),
                        )),
                    // SizedBox(width: 16,),
                    Container(
                      child: Text(
                        'Today-Aug 31,2022',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),

                    // SizedBox(width: 16,),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: CalenderPicker(
                      dateTime,
                      daysCount: days,
                      // ignore: avoid_print
                      enableMultiSelection: true,
                      // ignore: avoid_print
                      multiSelectionListener: (value) => print(value),
                      selectionColor: Colors.green,
                      selectedTextColor: Colors.white,
                    ),
                  ),
                ),
                Divider(
                  height: 24,
                  thickness: 2,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 25.0,
                    ),
                    label: Text(
                      'NEW EVENTS',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: const Size(200, 50),
                      maximumSize: const Size(200, 50),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(35.0),
                      ),
                    ),
                  ),
                ),
                /// Event box
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[100]),
                    child: Row(
                      children: [
                        /// time text
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey),
                          height: 250,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                  child: Container(
                                      margin: EdgeInsets.only(top: 110),
                                      child: Text(
                                        '23:00 PM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ))),
                            ],
                          ),
                        ),

                        /// Sport or game name

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// sport or game name container
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const EditProfile()),
                                  );
                                },
                                child: Container(
                                  child: Text(
                                    'Football-sdsd',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),

                              /// ground detail container
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Text(
                                  '140 Bd, Muhammad Zerktouni.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),

                              /// players detail container
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  'Players:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),

                              /// container text for team A
                              SizedBox(
                                height: 5,
                              ),
                              Row(

                                children: [
                                  Container(
                                    child: Text(
                                      'Team A: 0/11',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.blue,),
                                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                    margin: EdgeInsets.only(left: 65,top: 5),

                                    child: Text('Completed',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                  )
                                ],
                              ),

                              /// container text for team B
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                child: Text(
                                  'Team B: 0/11',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  'Event Date:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),

                              /// container text for team A
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'Aug 22,2022',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),

                                  /// price per member container
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.red,),
                                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                    margin: EdgeInsets.only(left: 55),

                                    child: Text('Price : M10000',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /// Event box
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[100]),
                    child: Row(
                      children: [
                        /// time text
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey),
                          height: 250,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                  child: Container(
                                      margin: EdgeInsets.only(top: 110),
                                      child: Text(
                                        '23:00 PM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ))),
                            ],
                          ),
                        ),

                        /// Sport or game name

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// sport or game name container
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const EditProfile()),
                                  );
                                },
                                child: Container(
                                  child: Text(
                                    'Football-sdsd',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),

                              /// ground detail container
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Text(
                                  '140 Bd, Muhammad Zerktouni.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),

                              /// players detail container
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  'Players:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),

                              /// container text for team A
                              SizedBox(
                                height: 5,
                              ),
                              Row(

                                children: [
                                  Container(
                                    child: Text(
                                      'Team A: 0/11',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.blue,),
                                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                    margin: EdgeInsets.only(left: 65,top: 5),

                                    child: Text('Completed',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                  )
                                ],
                              ),

                              /// container text for team B
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                child: Text(
                                  'Team B: 0/11',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  'Event Date:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),

                              /// container text for team A
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'Aug 22,2022',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),

                                  /// price per member container
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.red,),
                                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                    margin: EdgeInsets.only(left: 55),

                                    child: Text('Price : M10000',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /// Event box
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[100]),
                    child: Row(
                      children: [
                        /// time text
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey),
                          height: 250,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(
                                  child: Container(
                                      margin: EdgeInsets.only(top: 110),
                                      child: Text(
                                        '23:00 PM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ))),
                            ],
                          ),
                        ),

                        /// Sport or game name

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// sport or game name container
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const EditProfile()),
                                  );
                                },
                                child: Container(
                                  child: Text(
                                    'Football-sdsd',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),

                              /// ground detail container
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                child: Text(
                                  '140 Bd, Muhammad Zerktouni.',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),

                              /// players detail container
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  'Players:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),

                              /// container text for team A
                              SizedBox(
                                height: 5,
                              ),
                              Row(

                                children: [
                                  Container(
                                    child: Text(
                                      'Team A: 0/11',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.blue,),
                                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                    margin: EdgeInsets.only(left: 65,top: 5),

                                    child: Text('Completed',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                  )
                                ],
                              ),

                              /// container text for team B
                              SizedBox(
                                height: 2,
                              ),
                              Container(
                                child: Text(
                                  'Team B: 0/11',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  'Event Date:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),

                              /// container text for team A
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Text(
                                      'Aug 22,2022',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),

                                  /// price per member container
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.red,),
                                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
                                    margin: EdgeInsets.only(left: 55),

                                    child: Text('Price : M10000',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
