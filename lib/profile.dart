// ignore_for_file: import_of_legacy_library_into_null_safe, non_constant_identifier_names, unnecessary_cast

import 'package:evaluator_system_mobile/evaluate/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Firebase imports
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List data = [];
  var currentUser = FirebaseAuth.instance.currentUser;
  Widget listItem({title, leading = Icons.label, subtitle}) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          leading: Icon(leading),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection('evaluators')
        .where('uid', isEqualTo: currentUser.uid.toString())
        .get()
        .then((QuerySnapshot querySnapshot) {
      setState(() {
        querySnapshot.docs.forEach((doc) {
          Model().set_evaluator_id(doc.id.toString());
          data.add([
            doc['first_name'],
            doc['middle_name'],
            doc['last_name'],
            doc['gender'],
            doc['phone_number'],
            doc['school_office'],
            doc['position'],
            doc['email'],
            doc.id.toString()
          ]);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            decoration: const BoxDecoration(
                color: Colors.blueGrey,
                border: Border(
                    bottom: BorderSide(
                  width: 1,
                  color: Colors.grey,
                ))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  for (var credential in data)
                    Text(
                      credential[0] + " " + credential[1] + " " + credential[2],
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  for (var credential in data)
                    Text(
                      credential[7],
                      style: const TextStyle(color: Colors.white),
                    )
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
          for (var credential in data)
            listItem(
              title: credential[3],
              leading: Icons.male,
              subtitle: "Gender",
            ),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
          for (var credential in data)
            listItem(
              title: credential[4],
              leading: Icons.phone,
              subtitle: "Phone Number",
            ),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
          for (var credential in data)
            listItem(
              title: credential[5],
              leading: Icons.location_city,
              subtitle: "School/Office",
            ),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
          for (var credential in data)
            listItem(
              title: credential[6],
              leading: Icons.book,
              subtitle: "Position",
            ),
          SizedBox(height: MediaQuery.of(context).size.height / 50),
        ],
      ),
    );
  }
}
