
import 'package:flutter/material.dart';

import '../home_screens/allsettings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;
  void navigateBottomBar(int index){
    setState((){
      selectedIndex = index;
    });}
  final List<Widget> pages = [
    Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [

              ],
            ),
          ),
        ),
      ),
    ),

    Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                'Chat page',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ),

    Scaffold(
      appBar: AppBar(
        title: Text("Setting",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),),

      ),
      body: AllSettings(),
    ),

    Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text(
                'Profile Page',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: navigateBottomBar,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,size: 30,) , label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.black,size: 30,) , label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,size: 30,) , label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,size: 30,) , label: 'Person'),

        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
