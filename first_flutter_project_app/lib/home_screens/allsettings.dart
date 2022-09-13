import 'package:flutter/material.dart';

import '../Login_register_screen/login.dart';
import '../settings pages/language_bottomsheet.dart';
import '../settings pages/updatepassword.dart';
import '../testdata.dart';
class AllSettings extends StatefulWidget {
  const AllSettings({Key? key}) : super(key: key);

  @override
  State<AllSettings> createState() => _AllSettingsState();
}

class _AllSettingsState extends State<AllSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  /// Manage my profile

                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const testFirebase()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.person,
                            color: Colors.blue,
                            size: 30,),
                        ),
                        SizedBox(width: 25,),
                        Container(

                          child: Text('Manage My Profile',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),),
                        ),


                      ],
                    ),
                  ),
                  Divider(height: 24, thickness: 2
                    ,),

                  /// Change languagae
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              ListTile(
                                leading: Icon(Icons.share),
                                title: Text('Share'),
                              ),
                              ListTile(
                                leading: Icon(Icons.copy),
                                title: Text('Copy Link'),
                              ),
                              ListTile(
                                leading: Icon(Icons.edit),
                                title: Text('Edit'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                   child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.translate,
                            color: Colors.yellow.shade500,
                            size: 30,),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          child: Text('Change Language',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                        ),],
                    ),
                  ),
                  Divider(height: 24, thickness: 2
                    ,),

                  ///update password
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Change_password()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.lock,
                            color: Colors.red,
                            size: 30,),
                        ),
                        SizedBox(width: 25,),

                        Container(
                          child: Text(
                            'Update Password',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),

                        ),




                      ],
                    ),
                  ),
                  Divider(height: 24, thickness: 2
                    ,),

                  ///About us

                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.people_rounded,
                          color: Colors.green,
                          size: 30,),
                      ),
                      SizedBox(width: 25,),
                      Container(
                        child: Text('About Us',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),
                  Divider(height: 24, thickness: 2
                    ,),
                  ///Term of services


                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.list,
                          color: Colors.yellow.shade500,
                          size: 30,),
                      ),
                      SizedBox(width: 25,),
                      Container(
                        child: Text('Terms of Service',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),
                  Divider(height: 24, thickness: 2
                    ,),
                  ///privacy policy
                  Row(
                    children: [
                      Container(
                        child: Icon(Icons.privacy_tip,
                          color: Colors.blue,
                          size: 35,),
                      ),
                      SizedBox(width: 25,),
                      Container(
                        child: Text('Privacy Policy',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),
                  Divider(height: 24, thickness: 2
                    ,),


                  ///logout
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const loginScreen()),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                          child: Icon(Icons.logout,
                            color: Colors.red,
                            size: 35,),
                        ),
                        SizedBox(width: 25,),
                        Container(
                          child: Text('Logout',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                        ),

                      ],
                    ),
                  ),

                  Divider(height: 24 ,thickness: 2,
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
