
import 'package:first_flutter_project_app/Login_register_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    return Scaffold(

      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: Column(
                  children: [
                    /// welcome text
                    SizedBox(height: 25,),
                    Container(
                      child: Text('Join Us',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                        ),),
                    ),
                    /// create account text
                    SizedBox(height: 15,),
                    Container(
                      child: Text('Create your account',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),),
                    ),

                    /// icon of group n play
                    SizedBox(height: 20,),
                    Container(
                      height: 130,
                      child: Image.asset('assets/images/logo.png'),
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
                            controller: nameController,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.green,
                              ),
                              border: InputBorder.none,
                              hintText: 'Full Name',
                            )),
                      ),
                    ),

                    SizedBox(height: 25,),

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
                    SizedBox(height: 25,),
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


                    /// text field of Confirm password
                    SizedBox(height: 25,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                            controller: confirmPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock_outline,
                                color: Colors.green,
                              ),
                              border: InputBorder.none,
                              hintText: 'Confrim Password',

                            )),
                      ),
                    ),
                    ///container elevated button login
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
                          onPressed: ()  async{
                            UserCredential user = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: emailController.text,
                              password: passwordController.text,
                            );


                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const loginScreen()),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 18,

                            ),
                          )),
                    ),
                    /// container elevated button no have account
                    SizedBox(height: 25,),
                    Container(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(400, 60),
                            maximumSize: const Size(400, 60),
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                          onPressed: ()  {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const loginScreen()),
                            );
                          },
                          child: Expanded(
                            child: Text(
                              'Already have an account? login',
                              style: TextStyle(
                                fontSize: 18,

                              ),
                            ),
                          )),
                    ),
                    ///terms and conditions
                    SizedBox(
                      height: 25,
                    ),

                    Container(
                      child: Text('By continuing, your agree to our',
                        style: TextStyle(
                          fontSize: 18,
                        ),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text('Terms & Conditions',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),),
                    ),
                  ],
                ),
              ),
            ),
          )


      ),
    );
  }
}
