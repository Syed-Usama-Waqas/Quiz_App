import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddStudentDetail extends StatefulWidget {
  const AddStudentDetail({Key? key}) : super(key: key);

  @override
  State<AddStudentDetail> createState() => _AddStudentDetailState();
}

class _AddStudentDetailState extends State<AddStudentDetail> {
  var naam = '';
  var studentennummer = ' ';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student"),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: k16Space * 2,
            ),
            const Text(
              "Student Details",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: k16Space * 2,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Name",
                prefixIcon:
                    Icon(Icons.supervised_user_circle, color: Colors.black),
              ),
              onChanged: (value) {
                naam = value;
              },
            ),
            const SizedBox(
              height: k16Space * 1.5,
            ),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Student No",
                prefixIcon: Icon(Icons.numbers, color: Colors.black),
              ),
              onChanged: (value) {
                studentennummer = value;
              },
            ),
            Spacer(),
            CustomButton(
                text: "Add Student",
                onTap: () {
                  // studenten
                  //     .add({'naam': naam, 'studentennummer': studentennummer})
                  //     .then((value) => print('Gebruiker toegevoed'))
                  //     .catchError((error) => print('Toevoeging mislukt:$error'));
                  Navigator.pop(context);
                }),
            const SizedBox(
              height: k16Space,
            ),
          ],
        ),
      ),
    );
  }
}
