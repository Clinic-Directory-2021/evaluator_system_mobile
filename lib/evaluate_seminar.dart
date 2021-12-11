// ignore_for_file: non_constant_identifier_names
import 'package:evaluator_system_mobile/dashboard.dart';
import 'package:evaluator_system_mobile/evaluate/evaluate1.dart';
import 'package:evaluator_system_mobile/evaluate/model.dart';
import 'package:evaluator_system_mobile/homepage.dart';
import 'package:flutter/material.dart';

class EvaluatePage extends StatefulWidget {
  const EvaluatePage({Key? key}) : super(key: key);

  @override
  State<EvaluatePage> createState() => _EvaluatePageState();
}

class _EvaluatePageState extends State<EvaluatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff28B5B5),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    Model().get_seminar_title().toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Text(
                    "Program owner: " + Model().get_program_owner().toString(),
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Text(
                    "Seminar ID: " + Model().get_seminar_id().toString(),
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Column(
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
                  Text(
                    "This Application is help you to evaluate the seminar about " +
                        Model().get_seminar_title().toString() +
                        ". Please read the legends and start the evaluation.",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  MaterialButton(
                    height: MediaQuery.of(context).size.height / 15,
                    minWidth: MediaQuery.of(context).size.width,
                    color: const Color(0xff4B778D),
                    textColor: Colors.white,
                    child: const Text("Start Evaluation"),
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EvaluatePage1()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
