import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sharedprefernce/RegisterPageSHp.dart';
import 'package:flutter_application_1/WedHeart/FirstScreen.dart';
import 'package:flutter_application_1/WedHeart/WedHeartPhotos.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpageshp extends StatefulWidget {
  const Loginpageshp({super.key});

  @override
  State<Loginpageshp> createState() => LoginpageshpState();
}

class LoginpageshpState extends State<Loginpageshp> {
  bool obsuretext = true;
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();

  

  logincheck() async {
    if (formkey.currentState!.validate()) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? savedUsername = prefs.getString('username');
      String? savedPassword = prefs.getString('password');

      if (emailcontroller.text == savedUsername &&
          passwordcontroller.text == savedPassword) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Firstscreen()),
            (route) => false);
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content:
                Text('Invalid username or password. Please create an account.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Registerpageshp()));
                },
                child: Text('Create Account'),
              ),
            ],
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(planner),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
                controller: emailcontroller,
                decoration: InputDecoration(
                    labelText: "name",
                    hintText: "Enter Your Name",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 8, 85, 62)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 112, 243, 188)))),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                controller: passwordcontroller,
                obscureText: obsuretext,
                decoration: InputDecoration(
                    labelText: "password",
                    hintText: "Enter Your Password",
                    prefixIcon: Icon(
                      Icons.password_sharp,
                      color: Colors.blue,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obsuretext ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          obsuretext = !obsuretext;
                        });
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 8, 85, 62)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 112, 243, 188)))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7)),
                    minimumSize: Size(200, 40),
                    backgroundColor: const Color.fromARGB(255, 173, 213, 204)),
                onPressed: () {
                  logincheck();
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
