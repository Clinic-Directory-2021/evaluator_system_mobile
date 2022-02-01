import 'package:evaluator_system_mobile/register.dart';
import 'package:evaluator_system_mobile/signin.dart';
import 'package:evaluator_system_mobile/splashscreen.dart';
import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: splash_screen()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Main(title: 'adas'),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Main> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Main> {
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      maximumSize: const Size(200, 50));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Text(
              "City Schools Division of Malolos Online Evaluation System",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/deped_logo.png'))),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  height: MediaQuery.of(context).size.height / 15,
                  minWidth: MediaQuery.of(context).size.width,
                  color: const Color(0xff28B5B5),
                  textColor: Colors.white,
                  child: const Text("Login existing Account"),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyLoginPage()))
                  },
                  splashColor: const Color(0xff8FD9A8),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                MaterialButton(
                  height: MediaQuery.of(context).size.height / 15,
                  minWidth: MediaQuery.of(context).size.width,
                  color: const Color(0xff4B778D),
                  textColor: Colors.white,
                  child: const Text("Register an Account"),
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyRegisterPage()))
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
