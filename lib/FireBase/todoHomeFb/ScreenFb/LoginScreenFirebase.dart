import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/FireBase/todoHomeFb/ScreenFb/HomePageFireBase.dart';
import 'package:flutter_application_1/FireBase/todoHomeFb/ScreenFb/RegisterScreenFirebase.dart';

class LoginScreenFirebase extends StatefulWidget {
  const LoginScreenFirebase({super.key});

  @override
  State<LoginScreenFirebase> createState() => _LoginScreenFirebaseState();
}

class _LoginScreenFirebaseState extends State<LoginScreenFirebase> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginkey = GlobalKey<FormState>();
  FirebaseAuth auth = FirebaseAuth.instance;

  bool obsuretext = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Form(
            key: loginkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Login to Your Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 55,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  margin: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: TextFormField(
                    validator: (value) => value!.isEmpty ? "Enter email" : null,
                    style: TextStyle(color: Colors.white),
                    controller: emailController,
                    decoration: InputDecoration(
                        hintText: "Enter your email",
                        labelText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.yellow,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  height: 55,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  child: TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? "Enter password" : null,
                    style: TextStyle(color: Colors.white),
                    controller: passwordController,
                    obscureText: obsuretext,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obsuretext = !obsuretext;
                            });
                          },
                          icon: obsuretext
                              ? Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.white,
                                ),
                        ),
                        hintText: "Enter your password",
                        hintStyle: TextStyle(color: Colors.white),
                        labelText: "password",
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.yellow,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellowAccent),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 55,
                  width: 200,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () async {
                        if (loginkey.currentState!.validate()) {
                          login();
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",
                        style: TextStyle(color: Colors.white)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreenFirebase(),
                            ),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.amber),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Future<void> login() async {
    UserCredential userdata = await auth.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
    if (userdata.user != null) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePageFireBase()),
          (Route) => false);
    }
  }
}
