// ignore_for_file: non_constant_identifier_names, import_of_legacy_library_into_null_safe

import 'package:evaluator_system_mobile/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Firebase imports
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({Key? key}) : super(key: key);

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;
  final first_name = TextEditingController();
  final middle_name = TextEditingController();
  final last_name = TextEditingController();
  final phone_number = TextEditingController();
  final gender = TextEditingController();
  final school_office = TextEditingController();
  final position = TextEditingController();
  final password = TextEditingController();
  final confirm_password = TextEditingController();
  final email = TextEditingController();
  Widget textField(
      {labelText, hintText, obscureText, icon = Icons.email, controller}) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff4B778D)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        prefixIcon: Icon(
          icon,
          color: const Color(0xff4B778D),
        ),
        labelText: labelText,
        floatingLabelStyle: const TextStyle(color: Color(0xff4B778D)),
        hintText: hintText,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(0xff4B778D),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Register an Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                const Text(
                  "Sign up new account here",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                textField(
                    controller: first_name,
                    labelText: "First Name",
                    hintText: "Enter your First Name",
                    obscureText: false,
                    icon: Icons.perm_identity),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                textField(
                    controller: middle_name,
                    labelText: "Middle Name",
                    hintText: "Enter your Middle Name",
                    obscureText: false,
                    icon: Icons.perm_identity),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                textField(
                    controller: last_name,
                    labelText: "Last Name",
                    hintText: "Enter your Last Name",
                    obscureText: false,
                    icon: Icons.perm_identity),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                textField(
                    controller: phone_number,
                    labelText: "Phone Number",
                    hintText: "Enter your working Phone Number",
                    obscureText: false,
                    icon: Icons.phone),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                textField(
                    controller: gender,
                    labelText: "Gender",
                    hintText: "Enter your Gender",
                    obscureText: false,
                    icon: Icons.male),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                textField(
                  controller: school_office,
                  labelText: "School/Office",
                  hintText: "Enter your School/Office you worked with",
                  obscureText: false,
                  icon: Icons.location_city,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                textField(
                  controller: position,
                  labelText: "Position",
                  hintText: "Enter your Position",
                  obscureText: false,
                  icon: Icons.book,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                textField(
                    controller: email,
                    labelText: "Email",
                    hintText: "Enter your valid Email Address",
                    obscureText: false,
                    icon: Icons.email),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                textField(
                    controller: password,
                    labelText: "Password",
                    hintText: "Enter your password",
                    obscureText: true,
                    icon: Icons.lock),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                textField(
                    controller: confirm_password,
                    labelText: "Confirm Password",
                    hintText: "Please confirm your password",
                    obscureText: true,
                    icon: Icons.password),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                MaterialButton(
                  height: MediaQuery.of(context).size.height / 15,
                  minWidth: MediaQuery.of(context).size.width,
                  color: const Color(0xff28B5B5),
                  textColor: Colors.white,
                  child: const Text("Register"),
                  onPressed: () async {
                    try {
                      if (password.text != confirm_password.text) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                "Password and Confirm Password not matched")));
                      } else {
                        DateTime now = DateTime.now();
                        int document_id = now.millisecondsSinceEpoch;
                        CollectionReference users =
                            FirebaseFirestore.instance.collection('evaluators');
                        UserCredential userCredential = await FirebaseAuth
                            .instance
                            .createUserWithEmailAndPassword(
                                email: email.text, password: password.text);

                        Future<void> addUser() {
                          // Call the user's CollectionReference to add a new user
                          return users
                              .doc(document_id.toString())
                              .set({
                                'date_created': now.toString(),
                                'evaluator_id': document_id.toString(),
                                'uid': userCredential.user.uid.toString(),
                                'first_name': first_name.text,
                                'middle_name': middle_name.text,
                                'last_name': last_name.text,
                                'gender': gender.text,
                                'phone_number': phone_number.text,
                                'school_office': school_office.text,
                                'position': position.text,
                                'email': email.text,
                              })
                              .then((value) => {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Successfully Added for Mr/Ms/Mrs " +
                                                    first_name.text +
                                                    " " +
                                                    middle_name.text +
                                                    " " +
                                                    last_name.text)))
                                  })
                              .catchError((error) => {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(error.toString())))
                                  });
                        }

                        addUser();

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyLoginPage()));
                      }
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                "Your Password is too Weak. Please try to use harder password.")));
                      } else if (e.code == 'email-already-in-use') {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Email is already exist.")));
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(e.toString())));
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
