
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:first_flutter_project_app/Login_register_screen/forgot_password.dart';
import 'package:first_flutter_project_app/Login_register_screen/phone_login.dart';
import 'package:first_flutter_project_app/Login_register_screen/register.dart';
import 'package:first_flutter_project_app/home_screens/home.dart';
import 'package:flutter/material.dart';

import '../bottom_navigation/bottom_navigator.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {


  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    // TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    // TextEditingController phoneController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: Column(
                  children: [
                    /// welcome text
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text(
                        'Welcome!',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),

                    /// icon of group n play
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 130,
                      child: Image.asset('assets/images/logo.png'),
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    /// text field of email
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.mail_outline,
                                color: Colors.green,
                              ),
                              border: InputBorder.none,
                              hintText: 'Email Address',
                            )),
                      ),
                    ),

                    /// text field of password
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock_outline,
                                color: Colors.green,
                              ),
                              border: InputBorder.none,
                              hintText: 'Password',
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
                          onPressed: () async {

                            UserCredential user = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                            );

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,

                            ),
                          )),
                    ),

                    /// forgot your password
                    SizedBox(
                      height: 25,
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const forgotPassword()),
                        );
                      },
                      child: Container(
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),

                    /// or text
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Text(
                        'Or',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    /// container elevated button no have account
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(400, 60),
                            maximumSize: const Size(400, 60),
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          onPressed: () {


                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterScreen()),
                            );
                          },
                          child: Expanded(
                            child: Text(
                              'dont have an account? Sign up',
                              style: TextStyle(
                                fontSize: 18,

                              ),
                            ),
                          )),
                    ),

                    ///container elevated button with phone number
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.phone_rounded,
                          color: Colors.white,
                          size: 25.0,
                        ),
                        label: Text('Continue with Phone Number',
                          style: TextStyle(
                            fontSize: 18,

                          ),
                        ),
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  phoneAuthentication()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          minimumSize: const Size(400, 60),
                          maximumSize: const Size(400, 60),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(35.0),
                          ),
                        ),
                      ),


                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
