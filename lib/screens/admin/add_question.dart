import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AddQuestion extends StatefulWidget {
  const AddQuestion({Key? key}) : super(key: key);

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Question"),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "All Questions",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: k16Space,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Text("kajsndkjasdkj");
                },
              ),
            ),
            SizedBox(
              height: k16Space,
            ),
            CustomButton(
                text: "Multiple Choice",
                onTap: () {
                  Navigator.of(context).pushNamed('/multipleQuestion');
                }),
            SizedBox(
              height: k16Space,
            ),
            CustomButton(
                text: "Open Question",
                onTap: () {
                  Navigator.of(context).pushNamed('/openQuestion');
                }),
            SizedBox(
              height: k16Space,
            ),
            CustomButton(
                text: "Code Correction",
                onTap: () {
                  Navigator.of(context).pushNamed('/codeCorrection');
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
