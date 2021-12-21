// ignore_for_file: import_of_legacy_library_into_null_safe, non_constant_identifier_names
import 'package:evaluator_system_mobile/evaluate/evaluate2.dart';
import 'package:evaluator_system_mobile/evaluate/model.dart';
import 'package:evaluator_system_mobile/evaluate_seminar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Firebase Import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List already_evaluated_list = [];
  var currentUser = FirebaseAuth.instance.currentUser;
  Widget listItem({title, leading = Icons.label, trailing, subtitle}) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          leading: Icon(leading),
          trailing: trailing,
        ),
      ],
    );
  }

  List data = [];
  @override
  void initState() {
    super.initState();
    List facilitators = [];
    FirebaseFirestore.instance
        .collection('evaluators')
        .doc(Model().get_evaluator_id())
        .collection('already_evaluated')
        .get()
        .then((QuerySnapshot qs) {
      setState(() {
        qs.docs.forEach((element) {
          print(element.id);
          already_evaluated_list.add(element.id);
        });
        FirebaseFirestore.instance
            .collection('seminars')
            .where("status", isEqualTo: "open")
            .get()
            .then((QuerySnapshot querySnapshot) {
          querySnapshot.docs.forEach((doc) {
            // print(already_evaluated_list.isEmpty);
            setState(() {
              if (already_evaluated_list.isEmpty) {
                data.add([
                  doc['seminar_title'],
                  doc['seminar_id'],
                  doc['program_owner'],
                  doc['date_created'].toString(),
                ]);
              } else {
                print(already_evaluated_list.contains(doc.id));
                if (!already_evaluated_list.contains(doc.id)) {
                  data.add([
                    doc['seminar_title'],
                    doc['seminar_id'],
                    doc['program_owner'],
                    doc['date_created'].toString(),
                  ]);
                }
              }
            });
          });
        });
      });
    });
    // FirebaseFirestore.instance
    //     .collection('seminars')
    //     .where("status", isEqualTo: "open")
    //     .get()
    //     .then((QuerySnapshot querySnapshot) {
    //   for (var doc in querySnapshot.docs) {
    //     setState(() {
    //       if (already_evaluated_list.isEmpty) {
    //         data.add([
    //           doc['seminar_title'],
    //           doc['seminar_id'],
    //           doc['program_owner'],
    //           doc['date_created'].toString(),
    //         ]);
    //       } else {
    //         for (var item in already_evaluated_list) {
    //           if (item == doc.id) {
    //             continue;
    //           } else {
    //             print("same");
    //           }
    //         }
    //       }
    //     });
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Available Seminars",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 24),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              for (var seminar in data)
                listItem(
                  title: seminar[0],
                  subtitle: seminar[2],
                  leading: Icons.app_registration,
                  trailing: MaterialButton(
                    color: const Color(0xff28B5B5),
                    textColor: Colors.white,
                    onPressed: () {
                      Model().set_seminar_title(seminar[0]);
                      Model().set_seminar_id(seminar[1]);
                      Model().set_program_owner(seminar[2]);
                      Model().set_date_created(seminar[3]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EvaluatePage(),
                        ),
                      );
                    },
                    child: const Text("Evaluate"),
                  ),
                )
            ],
          ),
        ),
      ),
    ));
  }
}
