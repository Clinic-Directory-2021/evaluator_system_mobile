// ignore_for_file: non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaluator_system_mobile/homepage.dart';
import 'package:evaluator_system_mobile/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Firebase imports
// import 'package:firebase_core/firebase_core.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_auth/firebase_auth.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  // final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff28B5B5),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Main(
                          title: '',
                        )));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
          margin:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const Text(
                  "LOGIN YOUR ACCOUNT",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                const Text(
                  "Sign in your existing account here to evaluate seminar/s",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                TextFormField(
                  controller: email,
                  obscureText: false,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff28B5B5)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xff28B5B5),
                    ),
                    labelText: 'Email',
                    floatingLabelStyle: TextStyle(color: Color(0xff28B5B5)),
                    hintText: 'Email Address',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff28B5B5)),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff28B5B5),
                    ),
                    labelText: 'Password',
                    floatingLabelStyle: TextStyle(color: Color(0xff28B5B5)),
                    hintText: 'Password',
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                MaterialButton(
                  height: MediaQuery.of(context).size.height / 15,
                  minWidth: MediaQuery.of(context).size.width,
                  color: const Color(0xff4B778D),
                  textColor: Colors.white,
                  child: const Text("Login"),
                  onPressed: () async {
                    if (email.text == "" || password.text == "") {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              "Fields are empty. Please fill up the fields first.")));
                    } else {
                      try {
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .signInWithEmailAndPassword(
                                email: email.text, password: password.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyHomePage()));
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Email is not existing.")));
                        } else if (e.code == 'wrong-password') {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content:
                                      Text("You provided a wrong password.")));
                        }
                      }
                    }
                  },
                ),
              ],
            ),
          )),
    );
  }
}
