import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: Text("Admin Name ...."),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: "Create Exam Question",
              onTap: () {
                Navigator.of(context).pushNamed('/addQuestion');
              },
            ),
            const SizedBox(
              height: k16Space,
            ),
            CustomButton(
              text: "Add Student",
              onTap: () {
                Navigator.of(context).pushNamed('/addStudent');
              },
            ),
            const SizedBox(
              height: k16Space,
            ),
            CustomButton(
              text: "Forget Password",
              onTap: () {
                Navigator.of(context).pushNamed('/forgetPassword');
              },
            ),
          ],
        ),
      ),
    );
  }
}
