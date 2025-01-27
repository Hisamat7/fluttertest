import 'package:flutter/material.dart';

class Passwordeyestate extends StatefulWidget {
  @override
  State<Passwordeyestate> createState() => PasswordeyestateState();
}

class PasswordeyestateState extends State<Passwordeyestate> {
  bool obsuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email",
                  hintText: "Enter Your Email",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 142, 210, 146))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 192, 255, 251)))),
            ),
          ),
          
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: TextFormField(
              obscureText: obsuretext,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: "Password",
                  hintText: "Enter Your Password",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2,
                          color: const Color.fromARGB(255, 196, 222, 197))),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                        obsuretext ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        obsuretext = !obsuretext;
                      });
                    },
                  )),
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 142, 210, 146),
                minimumSize: Size(200, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
