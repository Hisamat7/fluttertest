import 'package:flutter/material.dart';
import 'package:flutter_application_1/Sharedprefernce/loginpageSHp.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registerpageshp extends StatefulWidget {
  const Registerpageshp({super.key});

  @override
  State<Registerpageshp> createState() => _RegisterpageshpState();
}

class _RegisterpageshpState extends State<Registerpageshp> {
  final formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool obsuretext = true;

  registorcheck() async{
    if (formkey.currentState!.validate()) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('username', emailcontroller.text);
      await prefs.setString('password', passwordcontroller.text);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration Successful!')),
      );

      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => Loginpageshp()), (route) => false); 
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("Register "),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 50,
                child: TextFormField(
                   validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a username';
                  }
                  return null;
                },
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.greenAccent)),
                    labelText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 50,
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
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.teal)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.greenAccent)),
                    labelText: 'password',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obsuretext = !obsuretext;
                          });
                        },
                        icon: Icon(obsuretext
                            ? Icons.visibility_off
                            : Icons.visibility)),
                    prefixIcon: Icon(
                      Icons.password,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    registorcheck();
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      minimumSize: Size(200, 50),
                      backgroundColor:
                          const Color.fromARGB(255, 211, 236, 234)),
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
