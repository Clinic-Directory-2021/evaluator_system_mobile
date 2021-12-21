import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate1.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate1_1.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate2.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate3.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate4.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate6.dart';
import 'package:evaluator_system_mobile/evaluate/model.dart';
import 'package:evaluator_system_mobile/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EvaluatePage5 extends StatefulWidget {
  const EvaluatePage5({Key? key}) : super(key: key);
  static String value24 = "";
  static String value25 = "";
  static String value26 = "";
  static String value27 = "";
  @override
  State<EvaluatePage5> createState() => _EvaluatePage5State();
}

class _EvaluatePage5State extends State<EvaluatePage5> {
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
                    child: Column(children: [
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
                "PROVISION OF SUPPORT MATERIAL",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              //Evaluation questions
              const Text(
                "1. Members were present when needed",
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
                            groupValue: EvaluatePage5.value24,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value24 = element.toString();
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
                            groupValue: EvaluatePage5.value24,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value24 = element.toString();
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
                            groupValue: EvaluatePage5.value24,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value24 = element.toString();
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
                            groupValue: EvaluatePage5.value24,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value24 = element.toString();
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
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Text(
                "2. Members were courteous",
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
                            groupValue: EvaluatePage5.value25,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value25 = element.toString();
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
                            groupValue: EvaluatePage5.value25,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value25 = element.toString();
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
                            groupValue: EvaluatePage5.value25,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value25 = element.toString();
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
                            groupValue: EvaluatePage5.value25,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value25 = element.toString();
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
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Text(
                "3. Members were efficient",
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
                            groupValue: EvaluatePage5.value26,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value26 = element.toString();
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
                            groupValue: EvaluatePage5.value26,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value26 = element.toString();
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
                            groupValue: EvaluatePage5.value26,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value26 = element.toString();
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
                            groupValue: EvaluatePage5.value26,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value26 = element.toString();
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
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Text(
                "4. Members were responsive to the needs of the trainees",
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
                            groupValue: EvaluatePage5.value27,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value27 = element.toString();
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
                            groupValue: EvaluatePage5.value27,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value27 = element.toString();
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
                            groupValue: EvaluatePage5.value27,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value27 = element.toString();
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
                            groupValue: EvaluatePage5.value27,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage5.value27 = element.toString();
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
                    onPressed: () {
                      if (EvaluatePage5.value24 == "" ||
                          EvaluatePage5.value25 == "" ||
                          EvaluatePage5.value26 == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "All questions are need to evaluate.")));
                      } else {
                        Model().set_q24(EvaluatePage5.value24);
                        Model().set_q25(EvaluatePage5.value25);
                        Model().set_q26(EvaluatePage5.value26);
                        Model().set_q27(EvaluatePage5.value27);
                        // addEvaluator();
                        // addHistory();
                        // addAlreadyEvaluated();

                        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        //     content: Text("Successfully Evaluated " +
                        //         Model().get_seminar_title().toString() +
                        //         ".")));
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EvaluatePage6()));
                      }
                    },
                    padding: const EdgeInsets.all(10),
                    child: const Text("Proceed to Comments"),
                    color: const Color(0xff28B5B5),
                  ),
                ],
              )
            ])))));
  }
}
