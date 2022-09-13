import 'package:flutter/material.dart';
class forgotPassword extends StatefulWidget {
  const forgotPassword({Key? key}) : super(key: key);

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password",style: TextStyle(
          fontSize: 22,

        ),),

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 35,),
      Center(
          child: Container(
              child: Text('Reset Password',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),)),
      ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                      child: Text('Enter your registered email address. we will send you a reset password link to follow!',
                        style: TextStyle(
                          fontSize: 18,

                        ),)),
              ),

              SizedBox(height: 25,),

              /// text field of Full name
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
                        hintText: '  Email Address',
                      )),
                ),
              ),
              ///container elevated button login
              SizedBox(
                height: 25,
              ),
              Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 60),
                      maximumSize: const Size(400, 60),
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const HomeScreen()),
                      // );
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
