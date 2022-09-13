import 'package:flutter/material.dart';

class Change_password extends StatefulWidget {
  const Change_password({Key? key}) : super(key: key);

  @override
  State<Change_password> createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Password",style: TextStyle(
          fontSize: 22,

        ),),

      ),
      body:

      SafeArea(

        child:Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText:  'Current Password',

                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText:  'New Password',

                      )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.compare_arrows_rounded,
                          color: Colors.green,
                        ),
                        border: InputBorder.none,
                        hintText:  'Confirm Password',

                      )
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: const Size(400, 60),
                      maximumSize: const Size(400, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35),
                      )),
                  onPressed: () {},
                  child: Text(
                    'Update Password',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )),

            ],
          ),
        ),

      ),

    );
  }
}
