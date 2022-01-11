// ignore_for_file: non_constant_identifier_names, avoid_print, invalid_return_type_for_catch_error

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate1_1.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate3.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class EvaluatePage2 extends StatefulWidget {
  const EvaluatePage2({Key? key}) : super(key: key);
  static String value9 = "";
  static String value10 = "";
  static String value11 = "";
  static String value12 = "";
  static String value13 = "";
  static String value14 = "";
  static String value15 = "";
  static String value16 = "";
  static String value17 = "";

  static var facilitators = ["Select Facilitator"];
  static List facilitator_id = [];
  static String? value;
  static String? value_id;
  static int value_index = 0;
  static int ctr = 0;
  static int? facilitator_len;
  static String button_value = "Evaluate";
  static Color button_color = const Color(0xfff0ad4e);
  static String id_last = "";
  @override
  State<EvaluatePage2> createState() => _EvaluatePage2State();
}

class _EvaluatePage2State extends State<EvaluatePage2> {
//Widget for dropdown/Gender
  @override
  void initState() {
    super.initState();

    DateTime now = DateTime.now();
    int document_id = DateTime.now().millisecondsSinceEpoch;
    Model().set_history_id(document_id.toString());

    FirebaseFirestore.instance
        .collection('seminars')
        .doc(Model().get_seminar_id().toString())
        .collection('facilitators')
        .get()
        .then((QuerySnapshot querySnapshot) {
      setState(() {
        querySnapshot.docs.forEach((doc) {
          EvaluatePage2.facilitators.add(doc['facilitator_name']);
          EvaluatePage2.facilitator_id.add([doc.id]);
        });
      });
    });
  }

  Widget dropdown() {
    return Container(
        margin: const EdgeInsets.only(bottom: 5),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
        child: DropdownButtonFormField<String>(
          value: EvaluatePage2.value,
          hint: const Text("Select Facilitator"),
          style: const TextStyle(color: Colors.black),
          isExpanded: true,
          items: EvaluatePage2.facilitators.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (s) {
            setState(() {
              EvaluatePage2.value = s;
              EvaluatePage2.value_index =
                  EvaluatePage2.facilitators.indexOf(s!) - 1;
              EvaluatePage2.value_id = EvaluatePage2
                  .facilitator_id[EvaluatePage2.value_index - 1]
                  .toString();

              EvaluatePage2.value9 = "";
              EvaluatePage2.value10 = "";
              EvaluatePage2.value11 = "";
              EvaluatePage2.value12 = "";
              EvaluatePage2.value13 = "";
              EvaluatePage2.value14 = "";
              EvaluatePage2.value15 = "";
              EvaluatePage2.value16 = "";
              EvaluatePage2.value17 = "";
            });
          },
        ));
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
                  "FACILITATORS",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                dropdown(),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                const Text(
                  "1. Adult learning methodologies were used",
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
                              groupValue: EvaluatePage2.value9,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value9 = element.toString();
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
                              groupValue: EvaluatePage2.value9,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value9 = element.toString();
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
                              groupValue: EvaluatePage2.value9,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value9 = element.toString();
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
                              groupValue: EvaluatePage2.value9,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value9 = element.toString();
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
                  "2. Adult learning methodologies were used",
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
                              groupValue: EvaluatePage2.value10,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value10 = element.toString();
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
                              groupValue: EvaluatePage2.value10,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value10 = element.toString();
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
                              groupValue: EvaluatePage2.value10,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value10 = element.toString();
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
                              groupValue: EvaluatePage2.value10,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value10 = element.toString();
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
                  "3. Program followed a logical order/structure",
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
                              groupValue: EvaluatePage2.value11,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value11 = element.toString();
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
                              groupValue: EvaluatePage2.value11,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value11 = element.toString();
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
                              groupValue: EvaluatePage2.value11,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value11 = element.toString();
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
                              groupValue: EvaluatePage2.value11,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value11 = element.toString();
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
                  "4. Contribution of all trainees was encouraged",
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
                              groupValue: EvaluatePage2.value12,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value12 = element.toString();
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
                              groupValue: EvaluatePage2.value12,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value12 = element.toString();
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
                              groupValue: EvaluatePage2.value12,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value12 = element.toString();
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
                              groupValue: EvaluatePage2.value12,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value12 = element.toString();
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
                  "5. Sessions activities were effective in generating learning",
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
                              groupValue: EvaluatePage2.value13,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value13 = element.toString();
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
                              groupValue: EvaluatePage2.value13,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value13 = element.toString();
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
                              groupValue: EvaluatePage2.value13,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value13 = element.toString();
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
                              groupValue: EvaluatePage2.value13,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value13 = element.toString();
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
                  "6. Adult learning methodologies were used",
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
                              groupValue: EvaluatePage2.value14,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value14 = element.toString();
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
                              groupValue: EvaluatePage2.value14,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value14 = element.toString();
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
                              groupValue: EvaluatePage2.value14,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value14 = element.toString();
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
                              groupValue: EvaluatePage2.value14,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value14 = element.toString();
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
                  "7. Program followed a logical order/structure",
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
                              groupValue: EvaluatePage2.value15,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value15 = element.toString();
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
                              groupValue: EvaluatePage2.value15,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value15 = element.toString();
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
                              groupValue: EvaluatePage2.value15,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value15 = element.toString();
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
                              groupValue: EvaluatePage2.value15,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value15 = element.toString();
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
                  "8. Contribution of all trainees was encouraged",
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
                              groupValue: EvaluatePage2.value16,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value16 = element.toString();
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
                              groupValue: EvaluatePage2.value16,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value16 = element.toString();
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
                              groupValue: EvaluatePage2.value16,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value16 = element.toString();
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
                              groupValue: EvaluatePage2.value16,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value16 = element.toString();
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
                  "9. Contribution of all trainees was encouraged",
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
                              groupValue: EvaluatePage2.value17,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value17 = element.toString();
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
                              groupValue: EvaluatePage2.value17,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value17 = element.toString();
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
                              groupValue: EvaluatePage2.value17,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value17 = element.toString();
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
                              groupValue: EvaluatePage2.value17,
                              onChanged: (element) {
                                setState(() {
                                  EvaluatePage2.value17 = element.toString();
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
                //Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EvaluatePage1_1()));
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
                        EvaluatePage2.value_id = EvaluatePage2
                            .facilitator_id[EvaluatePage2.value_index]
                            .toString()
                            .replaceAll("[", " ")
                            .replaceAll("]", "");
                        setState(() {
                          if (EvaluatePage2.button_value == "Next") {
                            EvaluatePage2.facilitators = [];
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const EvaluatePage3()));
                          } else {
                            if (EvaluatePage2.value9 == "" ||
                                EvaluatePage2.value10 == "" ||
                                EvaluatePage2.value11 == "" ||
                                EvaluatePage2.value12 == "" ||
                                EvaluatePage2.value13 == "" ||
                                EvaluatePage2.value14 == "" ||
                                EvaluatePage2.value15 == "" ||
                                EvaluatePage2.value16 == "" ||
                                EvaluatePage2.value17 == "") {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "All questions are need to evaluate.")));
                            } else {
                              if (EvaluatePage2.value.toString() ==
                                      "Select Facilitator" ||
                                  EvaluatePage2.value.toString() == "null") {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text("Please select facilitator")));
                              } else if (EvaluatePage2.id_last ==
                                  EvaluatePage2.value_id) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            "You already evaluated  " +
                                                EvaluatePage2.value
                                                    .toString())));
                              } else {
                                FirebaseFirestore.instance
                                    .collection('evaluations')
                                    .doc(Model().get_seminar_id().toString())
                                    .collection('evaluators')
                                    .get()
                                    .then((QuerySnapshot querySnapshot) {
                                  querySnapshot.docs.forEach((doc) {
                                    print(Model().get_history_id());
                                  });
                                  CollectionReference evaluators =
                                      FirebaseFirestore.instance
                                          .collection('evaluations')
                                          .doc(Model()
                                              .get_seminar_id()
                                              .toString())
                                          .collection('evaluators')
                                          .doc(Model().get_seminar_id())
                                          .collection('facilitators');
                                  CollectionReference evaluator =
                                      FirebaseFirestore.instance
                                          .collection('evaluators')
                                          .doc(Model()
                                              .get_evaluator_id()
                                              .toString())
                                          .collection('history')
                                          .doc(Model().get_seminar_id())
                                          .collection('facilitators');
                                  Future<void> addHistory() {
                                    // Call the user's CollectionReference to add a new user
                                    return evaluator
                                        .doc(EvaluatePage2.value)
                                        .set({
                                          'exist': "true",
                                          'facilitator_name':
                                              EvaluatePage2.value,
                                          'q9': EvaluatePage2.value9,
                                          'q10': EvaluatePage2.value10,
                                          'q11': EvaluatePage2.value11,
                                          'q12': EvaluatePage2.value12,
                                          'q13': EvaluatePage2.value13,
                                          'q14': EvaluatePage2.value14,
                                          'q15': EvaluatePage2.value15,
                                          'q16': EvaluatePage2.value16,
                                          'q17': EvaluatePage2.value17,
                                        })
                                        .then((value) {})
                                        .catchError((error) => print(
                                            "Failed to add user: $error"));
                                  }

                                  Future<void> addUser() {
                                    // Call the user's CollectionReference to add a new user
                                    return evaluators
                                        .doc(EvaluatePage2.value)
                                        .set({
                                          'exist': "true",
                                          'facilitator_name':
                                              EvaluatePage2.value,
                                          'q9': EvaluatePage2.value9,
                                          'q10': EvaluatePage2.value10,
                                          'q11': EvaluatePage2.value11,
                                          'q12': EvaluatePage2.value12,
                                          'q13': EvaluatePage2.value13,
                                          'q14': EvaluatePage2.value14,
                                          'q15': EvaluatePage2.value15,
                                          'q16': EvaluatePage2.value16,
                                          'q17': EvaluatePage2.value17,
                                        })
                                        .then((value) {})
                                        .catchError((error) => print(
                                            "Failed to add user: $error"));
                                  }

                                  addHistory();
                                  addUser();
                                });

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            "Successfully Evaluated " +
                                                EvaluatePage2.value
                                                    .toString())));
                                EvaluatePage2.id_last =
                                    EvaluatePage2.value_id.toString();
                                print(EvaluatePage2.id_last);
                                EvaluatePage2.ctr++;
                              }
                            }
                          }
                          if (EvaluatePage2.ctr ==
                              EvaluatePage2.facilitator_id.length) {
                            EvaluatePage2.button_value = "Next";
                            EvaluatePage2.button_color =
                                const Color(0xff22bb33);
                          }
                        });
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const EvaluatePage2()));
                      },
                      padding: const EdgeInsets.all(10),
                      child: Text(EvaluatePage2.button_value),
                      textColor: Colors.white,
                      color: EvaluatePage2.button_color,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}
