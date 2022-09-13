//
// import 'package:first_flutter_project_app/Login_register_screen/login.dart';
// import 'package:first_flutter_project_app/Login_register_screen/register.dart';
// import 'package:first_flutter_project_app/home_screens/home.dart';
// import 'package:flutter/material.dart';
//
// import '../home_screens/allsettings.dart';
// import '../home_screens/edit_profile.dart';
// import '../settings pages/updatepassword.dart';
// import 'doctor_card.dart';
//
// class drawerScreen extends StatefulWidget {
//   const drawerScreen({Key? key}) : super(key: key);
//
//   @override
//   State<drawerScreen> createState() => _drawerScreenState();
// }
// class _drawerScreenState extends State<drawerScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:
//       Text('Sports App',
//         style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 20.0
//         ),)
//       ),
//       drawer: Drawer(
//         // Add a ListView to the drawer.the can scroll easily vertically enough space
//
//         ///Profile Container
//         child: ListView(
//           // Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               child: Stack(
//                 children: <Widget>[
//                   Container(
//
//                   ),
//                   Center(
//                     child: Container(
//                       child: Image.asset("assets/images/logo.png"),
//                       height: 120,
//                       width: 120,
//                     ),
//                   ),
//                 ],
//               ),
//
//             ),
//
//
//             ListTile(
//                 title: Text.rich(
//                   TextSpan(
//                     children: [
//                       WidgetSpan(
//
//                           child: Icon(Icons.person,
//                             color: Colors.blueAccent,
//                           )),
//                       TextSpan(text: '  Manage Profile',
//                           style: TextStyle(
//                             fontSize: 20.0,
//
//                           )
//                       ),
//                     ],
//                   ),
//                 ),
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(
//                     builder: (context) => EditProfile(),
//                    ),
//                   );
//                 }
//             ), ///Setting and Change Language
//             ListTile(
//               title: Text.rich(
//                 TextSpan(
//                   children: [
//                     WidgetSpan(child: Icon(Icons.translate,
//                       color: Colors.yellow[800],)),
//                     TextSpan(text: '  Change Language',
//                         style: TextStyle(
//                           fontSize: 20.0,
//
//
//                         )),
//                   ],
//                 ),
//               ),
//               onTap: () {
//                 showModalBottomSheet(
//                   context: context,
//                   builder: (context) {
//                     return Wrap(
//                       children: [
//                         ListTile(
//                           leading: Icon(Icons.cloud_done),
//                           title: Text('English'),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.cloud_done_outlined),
//                           title: Text('French'),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.cloud_done_outlined),
//                           title: Text('Moroccan'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//             ),
//             /// home page Container
//
//             ListTile(
//                 title: Text.rich(
//                   TextSpan(
//                     children: [
//                       WidgetSpan(child: Icon(Icons.lock,
//                         color: Colors.green,)),
//                       TextSpan(text: '  Update Password',
//                           style: TextStyle(
//                             fontSize: 20.0,
//
//                           )),
//                     ],
//                   ),
//                 ),
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(
//                   builder: (context) => Change_password(),
//                   ),
//                    );
//                 }
//             ),
//
//             /// Container menu
//
//             ListTile(
//                 title: Text.rich(
//                   TextSpan(
//                     children: [
//                       WidgetSpan(child: Icon(Icons.menu_book,
//                         color: Colors.pinkAccent,)),
//                       TextSpan(text: '  Menu',
//                           style: TextStyle(
//                             fontSize: 20.0,
//
//                           )),
//                     ],
//                   ),
//                 ),
//                 onTap: () {
//                   //  Navigator.push(context, MaterialPageRoute(
//                   //   builder: (context) => (),
//                   // ),
//                   // );
//                 }
//             ),
//
//             ///logout container
//             ListTile(
//                 title: Text.rich(
//                   TextSpan(
//                     children: [
//                       WidgetSpan(child: Icon(Icons.logout,
//                         color: Colors.red,)),
//                       TextSpan(text: '  Logout',
//                           style: TextStyle(
//                             fontSize: 20.0,
//
//
//                           )),
//                     ],
//                   ),
//                 ),
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(
//                   builder: (context) => loginScreen(),
//                    ),
//                    );
//                 }
//             ),
//           ],
//         ),
//       ),
//       /// home page body
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           'Current location,',
//                           style: TextStyle(
//                             fontSize: 24,
//                             color: Colors.grey,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.location_on,
//                               color: Colors.yellow[800],
//                             ),
//                             SizedBox(
//                               width: 6,
//                             ),
//                             Text(
//                               'Surakarta, INA',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//
//                     /// profile picture here
//                     SizedBox(
//                       height: 15,
//                     ),
//                     Container(
//                       height: 80,
//                       child: CircleAvatar(
//                         backgroundImage: AssetImage(
//                           'assets/images/men2.png',
//                         ),
//                         radius: 40,
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 /// search bar
//                 SizedBox(height: 25),
//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.grey[50],
//                       borderRadius: BorderRadius.circular(12)),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     child: TextField(
//                         decoration: InputDecoration(
//                           icon: Icon(
//                             Icons.search,
//                             color: Colors.yellow[800],
//                             size: 30,
//                           ),
//                           border: InputBorder.none,
//                           hintText: 'Search for event',
//                         )),
//                   ),
//                 ),
//
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Center(
//                     child: Container(
//                       height: 500,
//                       child: ListView(
//                         scrollDirection: Axis.horizontal,
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               color: Colors.deepOrangeAccent,
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             child: doctorCard(
//                               ImagePath: 'assets/images/men1.png',
//                               Date: '08',
//                               Month: 'June',
//                               SarakartaCity: 'Sarakarta\nCity Clean',
//                               NameOfMen: 'Sarakarta Men',
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               color: Colors.blueGrey,
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             child: doctorCard(
//                               ImagePath: 'assets/images/men1.png',
//                               Date: '08',
//                               Month: 'June',
//                               SarakartaCity: 'Sarakarta\nCity Clean',
//                               NameOfMen: 'Sarakarta Men',
//                             ),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               color: Colors.green,
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                             child: doctorCard(
//                               ImagePath: 'assets/images/men1.png',
//                               Date: '08',
//                               Month: 'June',
//                               SarakartaCity: 'Sarakarta\nCity Clean',
//                               NameOfMen: 'Sarakarta Men',
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       )
//     );
//
//   }
// }