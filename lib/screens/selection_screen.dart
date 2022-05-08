import 'package:examenafname/utils/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: kPadding,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed('/adminLoginScreen');
                            },
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/teacher.svg",
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                ),
                                SizedBox(height: k16Space),
                                Text(
                                  "Admin",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: k16Space,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed('/studentLogin');
                            },
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  "assets/svg/student.svg",
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                ),
                                SizedBox(height: k16Space),
                                Text(
                                  "Student",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
