import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate2.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate4.dart';
import 'package:evaluator_system_mobile/evaluate/model.dart';
import 'package:flutter/material.dart';

class EvaluatePage3 extends StatefulWidget {
  const EvaluatePage3({Key? key}) : super(key: key);
  static String value18 = "";
  static String value19 = "";
  static String value20 = "";
  @override
  State<EvaluatePage3> createState() => _EvaluatePage3State();
}

class _EvaluatePage3State extends State<EvaluatePage3> {
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
                "PROGRAM MANAGEMENT",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              //Evaluation questions
              const Text(
                "1. raining program was delivered as planned",
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
                            groupValue: EvaluatePage3.value18,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value18 = element.toString();
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
                            groupValue: EvaluatePage3.value18,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value18 = element.toString();
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
                            groupValue: EvaluatePage3.value18,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value18 = element.toString();
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
                            groupValue: EvaluatePage3.value18,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value18 = element.toString();
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
                height: MediaQuery.of(context).size.height / 10,
              ),
              const Text(
                "2. Training program was managed effectively",
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
                            groupValue: EvaluatePage3.value19,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value19 = element.toString();
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
                            groupValue: EvaluatePage3.value19,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value19 = element.toString();
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
                            groupValue: EvaluatePage3.value19,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value19 = element.toString();
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
                            groupValue: EvaluatePage3.value19,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value19 = element.toString();
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
                height: MediaQuery.of(context).size.height / 10,
              ),
              const Text(
                "3. Training program was well-structured",
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
                            groupValue: EvaluatePage3.value20,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value20 = element.toString();
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
                            groupValue: EvaluatePage3.value20,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value20 = element.toString();
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
                            groupValue: EvaluatePage3.value20,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value20 = element.toString();
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
                            groupValue: EvaluatePage3.value20,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage3.value20 = element.toString();
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
                              builder: (context) => const EvaluatePage2()));
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
                      if (EvaluatePage3.value18 == "" ||
                          EvaluatePage3.value19 == "" ||
                          EvaluatePage3.value20 == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "All questions are need to evaluate.")));
                      } else {
                        Model().set_q18(EvaluatePage3.value18);
                        Model().set_q19(EvaluatePage3.value19);
                        Model().set_q20(EvaluatePage3.value20);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EvaluatePage4()));
                      }
                    },
                    padding: const EdgeInsets.all(10),
                    child: const Text("Next"),
                    color: const Color(0xff28B5B5),
                  ),
                ],
              )
            ])))));
  }
}
