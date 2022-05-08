import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MultipleQuestionStd extends StatefulWidget {
  const MultipleQuestionStd({Key? key}) : super(key: key);

  @override
  State<MultipleQuestionStd> createState() => _MultipleQuestionStdState();
}

class _MultipleQuestionStdState extends State<MultipleQuestionStd> {
  String grpValue = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiple Question"),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: k16Space * 2,
            ),
            const Text(
              "Question",
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: k16Space,
            ),
            const Text(
              "What is SE stand for?",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: k16Space * 2,
            ),
            RadioListTile(
                title: const Text("Software Eng"),
                value: "1",
                groupValue: grpValue,
                onChanged: (value) {
                  setState(() {
                    grpValue = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("Software Eng"),
                value: "2",
                groupValue: grpValue,
                onChanged: (value) {
                  setState(() {
                    grpValue = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("Software Eng"),
                value: "3",
                groupValue: grpValue,
                onChanged: (value) {
                  setState(() {
                    grpValue = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("Software Eng "),
                value: "4",
                groupValue: grpValue,
                onChanged: (value) {
                  setState(() {
                    grpValue = value.toString();
                  });
                }),
            const Spacer(),
            CustomButton(
                text: "Submit",
                onTap: () {
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
