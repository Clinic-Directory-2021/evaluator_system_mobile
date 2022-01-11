import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaluator_system_mobile/evaluate/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List data = [];
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

  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection('evaluators')
        .doc(Model().get_evaluator_id())
        .collection('history')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        setState(() {
          data.add([doc['seminar_title'], doc['date_posted']]);
        });
      });
    });
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
              for (var credential in data)
                listItem(
                  title: credential[0],
                  subtitle: credential[1],
                  leading: Icons.app_registration,
                ),
            ],
          ),
        ),
      ),
    ));
  }
}
