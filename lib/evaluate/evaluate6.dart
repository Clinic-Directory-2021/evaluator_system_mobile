import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate5.dart';
import 'package:evaluator_system_mobile/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/standalone.dart' as tz;

import 'evaluate1.dart';
import 'evaluate1_1.dart';
import 'evaluate2.dart';
import 'evaluate3.dart';
import 'evaluate4.dart';
import 'model.dart';

class EvaluatePage6 extends StatefulWidget {
  const EvaluatePage6({Key? key}) : super(key: key);
  static String comment1 = "";
  static String comment2 = "";
  static String comment3 = "";
  static String comment4 = "";

  @override
  State<EvaluatePage6> createState() => _EvaluatePage6State();
}

getCurrentDate() {
  return DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());
}

class _EvaluatePage6State extends State<EvaluatePage6> {
  final access_code_controller = TextEditingController();
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

  var currentUser = FirebaseAuth.instance.currentUser;

  CollectionReference evaluators = FirebaseFirestore.instance
      .collection('evaluations')
      .doc(Model().get_seminar_id())
      .collection('evaluators');

  CollectionReference evaluator = FirebaseFirestore.instance
      .collection('evaluators')
      .doc(Model().get_evaluator_id())
      .collection('history');

  CollectionReference already_evaluated = FirebaseFirestore.instance
      .collection('evaluators')
      .doc(Model().get_evaluator_id())
      .collection('already_evaluated');

  Future<void> addEvaluator() {
    // Call the user's CollectionReference to add a new user
    return evaluators
        .doc(Model().get_evaluator_id())
        .set({
          'uid': currentUser.uid.toString(),
          'full_name': Model().get_full_name(),
          'evaluatorEmail': Model().get_email(),
          'date_posted': now.toString(),
          'q1': Model().get_q1(),
          'q2': Model().get_q2(),
          'q3': Model().get_q3(),
          'q4': Model().get_q4(),
          'q5': Model().get_q5(),
          'q6': Model().get_q6(),
          'q7': Model().get_q7(),
          'q8': Model().get_q8(),
          'q18': Model().get_q18(),
          'q19': Model().get_q19(),
          'q20': Model().get_q20(),
          'q21': Model().get_q21(),
          'q22': Model().get_q22(),
          'q23': Model().get_q23(),
          'q24': Model().get_q24(),
          'q25': Model().get_q25(),
          'q26': Model().get_q26(),
          'q27': Model().get_q27(),
          'c1': Model().get_comment1(),
          'c2': Model().get_comment2(),
          'c3': Model().get_comment3(),
          'c4': Model().get_comment4(),
        })
        .then((value) => print("Evaluator Added"))
        .catchError((error) => print("Failed to add evaluator: $error"));
  }

  DateTime now = DateTime.now();
  int document_id = DateTime.now().millisecondsSinceEpoch;

  Future<void> addHistory() {
    // Call the user's CollectionReference to add a new user
    return evaluator
        .doc(Model().get_history_id())
        .set({
          'uid': currentUser.uid.toString(),
          'date_posted': DateTime.now().toString(),
          'seminar_title': Model().get_seminar_title(),
          'seminar_id': Model().get_seminar_id(),
          'program_owner': Model().get_program_owner(),
          'q1': Model().get_q1(),
          'q2': Model().get_q2(),
          'q3': Model().get_q3(),
          'q4': Model().get_q4(),
          'q5': Model().get_q5(),
          'q6': Model().get_q6(),
          'q7': Model().get_q7(),
          'q8': Model().get_q8(),
          'q18': Model().get_q18(),
          'q19': Model().get_q19(),
          'q20': Model().get_q20(),
          'q21': Model().get_q21(),
          'q22': Model().get_q22(),
          'q23': Model().get_q23(),
          'q24': Model().get_q24(),
          'q25': Model().get_q25(),
          'q26': Model().get_q26(),
          'q27': Model().get_q27(),
          'c1': Model().get_comment1(),
          'c2': Model().get_comment2(),
          'c3': Model().get_comment3(),
          'c4': Model().get_comment4(),
        })
        .then((value) => print("Evaluator Added"))
        .catchError((error) => print("Failed to add evaluator: $error"));
  }

  Future<void> addAlreadyEvaluated() {
    // Call the user's CollectionReference to add a new user
    return already_evaluated
        .doc(Model().get_seminar_id())
        .set({
          'uid': currentUser.uid.toString(),
          'status': "Already Evaluated",
          "id": Model().get_seminar_id()
        })
        .then((value) => print("Evaluator Added"))
        .catchError((error) => print("Failed to add evaluator: $error"));
  }

  final c1 = TextEditingController();
  final c2 = TextEditingController();
  final c3 = TextEditingController();
  final c4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EvaluatePage5()));
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        backgroundColor: const Color(0xff28B5B5),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  "Evaluation Legends",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "[4] - Strongly Agree",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "[3] - Agree",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "[2] - Disagree",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "[1] - Strongly Disagree",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Text(
                  "Comments and Suggestions",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Text(
                  "What is your most significant learning for the day?",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                TextFormField(
                  controller: c1,
                  keyboardType: TextInputType.multiline,
                  minLines: 1, //Normal textInputField will be displayed
                  maxLines: 5, // when user presses enter it will adapt to it
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Text(
                  "What will you do differently as a School Head/Teacher/Personnel given your learning?",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                TextFormField(
                  controller: c2,
                  keyboardType: TextInputType.multiline,
                  minLines: 1, //Normal textInputField will be displayed
                  maxLines: 5, // when user presses enter it will adapt to it
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Text(
                  "How can the session be improved, if at all?",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                TextFormField(
                  controller: c3,
                  keyboardType: TextInputType.multiline,
                  minLines: 1, //Normal textInputField will be displayed
                  maxLines: 5, // when user presses enter it will adapt to it
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                const Text(
                  "Comments/Suggestions for the improvement of program management/operations.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                TextFormField(
                  controller: c4,
                  keyboardType: TextInputType.multiline,
                  minLines: 1, //Normal textInputField will be displayed
                  maxLines: 5, // when user presses enter it will adapt to it
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EvaluatePage5()));
                      },
                      padding: const EdgeInsets.all(10),
                      child: const Text("Back"),
                      textColor: Colors.white,
                      color: const Color(0xff4B778D),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                      onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('AlertDialog Title'),
                          content: Column(
                            children: [
                              textField(
                                labelText: "Enter Access Code",
                                hintText: "example: 1612345567",
                                obscureText: false,
                                icon: Icons.password,
                                controller: access_code_controller,
                              )
                            ],
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                if (access_code_controller.text != "") {
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content:
                                              Text("Field Cannot be empty.")));
                                }
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Text("Submit Evaluation"),
                      color: const Color(0xff28B5B5),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}