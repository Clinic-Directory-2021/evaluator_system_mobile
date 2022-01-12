import 'package:evaluator_system_mobile/evaluate/evaluate6.dart';
import 'package:flutter/material.dart';

import 'evaluate5.dart';
import 'model.dart';

class EvaluatePage7 extends StatefulWidget {
  const EvaluatePage7({Key? key}) : super(key: key);
  static String value28 = "";
  static String value29 = "";
  static String value30 = "";
  static String value31 = "";
  @override
  State<EvaluatePage7> createState() => _EvaluatePage7State();
}

class _EvaluatePage7State extends State<EvaluatePage7> {
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
                "Venue and Accomodations",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              //Evaluation questions
              const Text(
                "1. Venue was adequate and approriate for the session",
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
                            groupValue: EvaluatePage7.value28,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value28 = element.toString();
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
                            groupValue: EvaluatePage7.value28,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value28 = element.toString();
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
                            groupValue: EvaluatePage7.value28,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value28 = element.toString();
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
                            groupValue: EvaluatePage7.value28,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value28 = element.toString();
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
                "2. The Venue was comfortable and provided adequate space for the attendees",
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
                            groupValue: EvaluatePage7.value29,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value29 = element.toString();
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
                            groupValue: EvaluatePage7.value29,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value29 = element.toString();
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
                            groupValue: EvaluatePage7.value29,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value29 = element.toString();
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
                            groupValue: EvaluatePage7.value29,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value29 = element.toString();
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
                "3. Venue has utilities to accomodate attendees(meals, common areas, services, etc)",
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
                            groupValue: EvaluatePage7.value30,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value30 = element.toString();
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
                            groupValue: EvaluatePage7.value30,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value30 = element.toString();
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
                            groupValue: EvaluatePage7.value30,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value30 = element.toString();
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
                            groupValue: EvaluatePage7.value30,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value30 = element.toString();
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
                "4. Venue has noting aspects such as performance areas, staff and guest areas.",
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
                            groupValue: EvaluatePage7.value31,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value31 = element.toString();
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
                            groupValue: EvaluatePage7.value31,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value31 = element.toString();
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
                            groupValue: EvaluatePage7.value31,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value31 = element.toString();
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
                            groupValue: EvaluatePage7.value31,
                            onChanged: (element) {
                              setState(() {
                                EvaluatePage7.value31 = element.toString();
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
                      if (EvaluatePage7.value28 == "" ||
                          EvaluatePage7.value29 == "" ||
                          EvaluatePage7.value30 == "" ||
                          EvaluatePage7.value31 == "") {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "All questions are need to evaluate.")));
                      } else {
                        Model().set_q28(EvaluatePage7.value28);
                        Model().set_q29(EvaluatePage7.value29);
                        Model().set_q30(EvaluatePage7.value30);
                        Model().set_q31(EvaluatePage7.value31);
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
                    child: const Text("Next"),
                    color: const Color(0xff28B5B5),
                  ),
                ],
              )
            ])))));
  }
}
