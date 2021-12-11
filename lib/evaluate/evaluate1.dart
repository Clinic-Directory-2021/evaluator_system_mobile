// ignore_for_file: non_constant_identifier_names

import 'package:evaluator_system_mobile/evaluate/evaluate1_1.dart';
import 'package:evaluator_system_mobile/evaluate/model.dart';
import 'package:evaluator_system_mobile/evaluate_seminar.dart';
import 'package:flutter/material.dart';

class EvaluatePage1 extends StatefulWidget {
  const EvaluatePage1({Key? key}) : super(key: key);
  static String value1 = "";
  static String value2 = "";
  static String value3 = "";
  static String value4 = "";

  @override
  State<EvaluatePage1> createState() => _EvaluatePage1State();
}

class _EvaluatePage1State extends State<EvaluatePage1> {
  //Custom widget for radio button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EvaluatePage()));
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
                    "SESSION/DELIVERY OF CONTENT",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),

                  //Evaluation questions
                  const Text(
                    "Program objectives were clearly presented",
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
                                groupValue: EvaluatePage1.value1,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value1 = element.toString();
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
                                groupValue: EvaluatePage1.value1,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value1 = element.toString();
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
                                groupValue: EvaluatePage1.value1,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value1 = element.toString();
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
                                groupValue: EvaluatePage1.value1,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value1 = element.toString();
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
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  const Text(
                    "Program objectives were attained",
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
                                groupValue: EvaluatePage1.value2,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value2 = element.toString();
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
                                groupValue: EvaluatePage1.value2,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value2 = element.toString();
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
                                groupValue: EvaluatePage1.value2,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value2 = element.toString();
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
                                groupValue: EvaluatePage1.value2,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value2 = element.toString();
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
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  const Text(
                    "Program content was appropriate to trainees roles and responsibility",
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
                                groupValue: EvaluatePage1.value3,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value3 = element.toString();
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
                                groupValue: EvaluatePage1.value3,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value3 = element.toString();
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
                                groupValue: EvaluatePage1.value3,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value3 = element.toString();
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
                                groupValue: EvaluatePage1.value3,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value3 = element.toString();
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
                    height: MediaQuery.of(context).size.height / 20,
                  ),
                  const Text(
                    "Content delivered was based on authoritative and reliable sources",
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
                                groupValue: EvaluatePage1.value4,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value4 = element.toString();
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
                                groupValue: EvaluatePage1.value4,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value4 = element.toString();
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
                                groupValue: EvaluatePage1.value4,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value4 = element.toString();
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
                                groupValue: EvaluatePage1.value4,
                                onChanged: (element) {
                                  setState(() {
                                    EvaluatePage1.value4 = element.toString();
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
                  MaterialButton(
                    padding: const EdgeInsets.all(10),
                    child: const Text("Next"),
                    color: const Color(0xff28B5B5),
                    onPressed: () {
                      if (EvaluatePage1.value1 == "" ||
                          EvaluatePage1.value2 == "" ||
                          EvaluatePage1.value3 == "" ||
                          EvaluatePage1.value4 == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "All questions are need to evaluate.")));
                      } else {
                        Model().set_q1(EvaluatePage1.value1);
                        Model().set_q2(EvaluatePage1.value2);
                        Model().set_q3(EvaluatePage1.value3);
                        Model().set_q4(EvaluatePage1.value4);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EvaluatePage1_1()));
                      }
                    },
                  )
                ],
              ),
            ),
          )),
    );
  }
}
