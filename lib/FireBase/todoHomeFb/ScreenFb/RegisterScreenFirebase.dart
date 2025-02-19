import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/FireBase/todoHomeFb/ScreenFb/HomePageFireBase.dart';

class RegisterScreenFirebase extends StatefulWidget {
  const RegisterScreenFirebase({super.key});

  @override
  State<RegisterScreenFirebase> createState() => _RegisterScreenFirebaseState();
}

class _RegisterScreenFirebaseState extends State<RegisterScreenFirebase> {
  // Controllers for user input
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();

  final GlobalKey<FormState> _registerKey = GlobalKey<FormState>();
  bool obscureText = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// Function to handle user registration with Firebase Authentication
  Future<void> registerUser() async {
    if (!_registerKey.currentState!.validate()) return;

    try {
      // Create user with email and password
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      // Store additional user data in Firestore
      await _firestore.collection("users").doc(userCredential.user!.uid).set({
        "name": fullnameController.text.trim(),
        "email": emailController.text.trim(),
        "uid": userCredential.user!.uid,
      });

      // Navigate to home page on successful registration
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomePageFireBase()),
        (route) => false,
      );
    } catch (e) {
      // Show error message if registration fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _registerKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Register Your Account",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(height: 20),

              // Full Name Input Field
              TextFormField(
                controller: fullnameController,
                validator: (value) => value!.isEmpty ? "Enter full name" : null,
                style: const TextStyle(color: Colors.white),
                decoration: _inputDecoration("Enter full name", "Name"),
              ),
              const SizedBox(height: 20),

              // Email Input Field
              TextFormField(
                controller: emailController,
                validator: (value) => value!.isEmpty ? "Enter email" : null,
                style: const TextStyle(color: Colors.white),
                decoration: _inputDecoration("Enter email", "Email"),
              ),
              const SizedBox(height: 20),

              // Password Input Field
              TextFormField(
                controller: passwordController,
                obscureText: obscureText,
                validator: (value) => value!.isEmpty ? "Enter password" : null,
                style: const TextStyle(color: Colors.white),
                decoration: _passwordDecoration(),
              ),
              const SizedBox(height: 20),

              // Register Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: registerUser,
                child: const Text("Sign Up", style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
              const SizedBox(height: 20),

              // Navigation to Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?", style: TextStyle(color: Colors.white)),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Login", style: TextStyle(color: Colors.amber)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Custom input decoration for text fields
  InputDecoration _inputDecoration(String hintText, String labelText) {
    return InputDecoration(
      hintText: hintText,
      labelText: labelText,
      hintStyle: const TextStyle(color: Colors.white),
      labelStyle: const TextStyle(color: Colors.white),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.yellow),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.yellowAccent),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  /// Custom input decoration for password field with visibility toggle
  InputDecoration _passwordDecoration() {
    return _inputDecoration("Enter password", "Password").copyWith(
      suffixIcon: IconButton(
        onPressed: () => setState(() => obscureText = !obscureText),
        icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility, color: Colors.white),
      ),
    );
  }
}
