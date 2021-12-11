import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate2.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate3.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate5.dart';
import 'package:evaluator_system_mobile/evaluate/model.dart';
import 'package:flutter/material.dart';

class EvaluatePage4 extends StatefulWidget {
  const EvaluatePage4({Key? key}) : super(key: key);
  static String value21 = "";
  static String value22 = "";
  static String value23 = "";
  @override
  State<EvaluatePage4> createState() => _EvaluatePage4State();
}

class _EvaluatePage4State extends State<EvaluatePage4> {
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
                "1. Appropriate to trainees' needs",
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
                            groupValue: EvaluatePage4.value21,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value21 = element.toString();
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
                            groupValue: EvaluatePage4.value21,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value21 = element.toString();
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
                            groupValue: EvaluatePage4.value21,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value21 = element.toString();
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
                            groupValue: EvaluatePage4.value21,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value21 = element.toString();
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
                "2.Adequate",
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
                            groupValue: EvaluatePage4.value22,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value22 = element.toString();
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
                            groupValue: EvaluatePage4.value22,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value22 = element.toString();
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
                            groupValue: EvaluatePage4.value22,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value22 = element.toString();
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
                            groupValue: EvaluatePage4.value22,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value22 = element.toString();
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
                "3. Given on time",
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
                            groupValue: EvaluatePage4.value23,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value23 = element.toString();
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
                            groupValue: EvaluatePage4.value23,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value23 = element.toString();
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
                            groupValue: EvaluatePage4.value23,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value23 = element.toString();
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
                            groupValue: EvaluatePage4.value23,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage4.value23 = element.toString();
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
                              builder: (context) => const EvaluatePage3()));
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
                      if (EvaluatePage4.value21 == "" ||
                          EvaluatePage4.value22 == "" ||
                          EvaluatePage4.value23 == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "All questions are need to evaluate.")));
                      } else {
                        Model().set_q21(EvaluatePage4.value21);
                        Model().set_q22(EvaluatePage4.value22);
                        Model().set_q23(EvaluatePage4.value23);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EvaluatePage5()));
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
