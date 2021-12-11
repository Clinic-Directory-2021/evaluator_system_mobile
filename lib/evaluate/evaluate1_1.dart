// ignore_for_file: non_constant_identifier_names, camel_case_types
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate1.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate2.dart';
import 'package:evaluator_system_mobile/evaluate/model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EvaluatePage1_1 extends StatefulWidget {
  const EvaluatePage1_1({Key? key}) : super(key: key);
  static String value5 = "";
  static String value6 = "";
  static String value7 = "";
  static String value8 = "";
  @override
  State<EvaluatePage1_1> createState() => _EvaluatePage1_1State();
}

class _EvaluatePage1_1State extends State<EvaluatePage1_1> {
  var currentUser = FirebaseAuth.instance.currentUser;
  CollectionReference users =
      FirebaseFirestore.instance.collection('evaluations');
  Future<void> addEvaluation() {
    // Call the user's CollectionReference to add a new user
    return users
        .doc(Model().get_seminar_id())
        .set({
          'date': Model().get_date_created(),
          'seminar_id': Model().get_seminar_id(),
          'seminar_title': Model().get_seminar_title(),
          'program_owner': Model().get_program_owner()
        })
        .then((value) => print("evaluation Added"))
        .catchError((error) => print("Failed to add evaluation: $error"));
  }

  // CollectionReference evaluators = FirebaseFirestore.instance
  //     .collection('evaluations')
  //     .doc(Model().get_seminar_id())
  //     .collection('evaluators');

  // Future<void> addEvaluator() {
  //   // Call the user's CollectionReference to add a new user
  //   return evaluators
  //       .doc(Model().get_evaluator_id())
  //       .set({"": ""})
  //       .then((value) => print("Evaluator Added"))
  //       .catchError((error) => print("Failed to add evaluator: $error"));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                    "SESSION/DELIVERY OF CONTENT",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  //Evaluation questions
                  const Text(
                    "Sessions activities were effective in generating learning",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "4",
                                groupValue: EvaluatePage1_1.value5,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value5 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('4'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "3",
                                groupValue: EvaluatePage1_1.value5,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value5 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('3'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "2",
                                groupValue: EvaluatePage1_1.value5,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value5 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('2'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "1",
                                groupValue: EvaluatePage1_1.value5,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value5 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('1'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  const Text(
                    "Adult learning methodologies were used",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "4",
                                groupValue: EvaluatePage1_1.value6,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value6 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('4'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "3",
                                groupValue: EvaluatePage1_1.value6,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value6 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('3'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "2",
                                groupValue: EvaluatePage1_1.value6,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value6 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('2'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "1",
                                groupValue: EvaluatePage1_1.value6,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value6 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('1'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  const Text(
                    "Program followed a logical order/structure",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "4",
                                groupValue: EvaluatePage1_1.value7,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value7 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('4'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "3",
                                groupValue: EvaluatePage1_1.value7,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value7 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('3'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "2",
                                groupValue: EvaluatePage1_1.value7,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value7 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('2'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "1",
                                groupValue: EvaluatePage1_1.value7,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value7 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('1'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  const Text(
                    "Contribution of all trainees was encouraged",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "4",
                                groupValue: EvaluatePage1_1.value8,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value8 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('4'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "3",
                                groupValue: EvaluatePage1_1.value8,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value8 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('3'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "2",
                                groupValue: EvaluatePage1_1.value8,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value8 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('2'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Radio(
                                value: "1",
                                groupValue: EvaluatePage1_1.value8,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1_1.value8 = element.toString();
                                  });
                                }),
                            const Expanded(
                              child: Text('1'),
                            )
                          ],
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  //Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EvaluatePage1()));
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
                        onPressed: () {
                          if (EvaluatePage1_1.value5 == "" ||
                              EvaluatePage1_1.value6 == "" ||
                              EvaluatePage1_1.value7 == "" ||
                              EvaluatePage1_1.value8 == "") {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        "All questions are need to evaluate.")));
                          } else {
                            Model().set_q5(EvaluatePage1_1.value5);
                            Model().set_q6(EvaluatePage1_1.value6);
                            Model().set_q7(EvaluatePage1_1.value7);
                            Model().set_q8(EvaluatePage1_1.value8);
                            addEvaluation();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EvaluatePage2()));
                          }
                        },
                        padding: const EdgeInsets.all(10),
                        child: const Text("Next"),
                        color: const Color(0xff28B5B5),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
