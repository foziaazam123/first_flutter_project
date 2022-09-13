import 'package:flutter/material.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile",style: TextStyle(
          fontSize: 22,

        ),),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    /// image avatar

                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          children: [
                            SizedBox(height: 25,
                            ),
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage("assets/images/profile.png"),
                              child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: CircleAvatar(
                                        radius: 18,
                                        backgroundColor: Colors.grey[200],
                                        child: Icon(Icons.camera_alt_outlined,
                                          color: Colors.green,),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            /// name text field
                            SizedBox(height: 25,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.person_outline_outlined,
                                        color: Colors.green,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Enter Name',

                                    )),
                              ),
                            ),
                            /// email text field
                            SizedBox(height: 25,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.email_outlined,
                                        color: Colors.green,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Email Address',

                                    )),
                              ),
                            ),
                            /// phonenumber text field
                            SizedBox(height: 25,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.phone,
                                        color: Colors.green,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Phone Number',

                                    )),
                              ),
                            ),

                            /// location text field
                            SizedBox(height: 25,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.location_searching_outlined,
                                        color: Colors.green,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Your Location',

                                    )),
                              ),
                            ),

                            /// gender text field
                            SizedBox(height: 25,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.transgender,
                                        color: Colors.green,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Your Gender',

                                    )),
                              ),
                            ),

                            /// date of birth text field
                            SizedBox(height: 25,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                    decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.calendar_month_outlined,
                                        color: Colors.green,
                                      ),
                                      border: InputBorder.none,
                                      hintText: 'Date of Birth',

                                    )),
                              ),
                            ),

                            ///Save profile elevated button
                            SizedBox(height: 25,),
                            Container(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(400, 60),
                                    maximumSize: const Size(400, 60),
                                    primary: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                  ),
                                  onPressed: ()  {},
                                  child: Text(
                                    'Save Profile',
                                    style: TextStyle(
                                      fontSize: 18,

                                    ),
                                  )),
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
        ),
      ),
    );
  }
}
