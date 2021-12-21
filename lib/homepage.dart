// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaluator_system_mobile/dashboard.dart';
import 'package:evaluator_system_mobile/history.dart';
import 'package:evaluator_system_mobile/main.dart';
import 'package:evaluator_system_mobile/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'evaluate/model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> handleClick(int item, BuildContext context) async {
    switch (item) {
      case 1:
        {
          await FirebaseAuth.instance.signOut();
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Main(
                        title: '',
                      )));
          break;
        }
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => DefaultTabController(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Homepage'),
            automaticallyImplyLeading: false,
            actions: <Widget>[
              PopupMenuButton<int>(
                onSelected: (item) => handleClick(item, context),
                itemBuilder: (context) => [
                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text(
                      'Logout',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(color: Color(0xff4B778D)),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.face),
                  text: 'Profile',
                ),
                Tab(
                  icon: Icon(Icons.app_registration),
                  text: 'Seminars',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'History',
                )
              ],
            ),
            elevation: 10,
            titleSpacing: 0,
          ),
          body: TabBarView(children: [
            buildPage('Profile', context),
            buildPage('Dashboard', context),
            buildPage('History', context),
          ]),
          backgroundColor: const Color(0xffdcdcdc),
        ),
        length: 3,
      );

  Widget buildPage(String text, BuildContext context) {
    switch (text) {
      case "Dashboard":
        {
          return const Dashboard();
        }
      case "Profile":
        {
          return const Profile();
        }
      case "History":
        {
          return const History();
        }
      default:
        {
          return const Center(
            child: Text("No return"),
          );
        }
    }
  }
}
