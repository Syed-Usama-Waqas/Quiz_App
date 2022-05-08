import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  Widget build(BuildContext context) {
    // CollectionReference studenten =
    //     FirebaseFirestore.instance.collection('studenten');
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student"),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "All Students",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: k16Space,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text("Student $index"),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "/studentDetail",
                        );
                      });
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 2.0,
                    color: Colors.grey,
                  );
                },
              ),
            ),
            SizedBox(
              height: k16Space,
            ),
            CustomButton(
                text: "Add Student",
                onTap: () {
                  Navigator.of(context).pushNamed('/addStudentDetail');
                }),
            SizedBox(
              height: k16Space,
            ),
          ],
        ),
      ),
    );
  }
}
