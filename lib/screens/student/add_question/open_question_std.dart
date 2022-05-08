import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OpenQuestionStd extends StatefulWidget {
  const OpenQuestionStd({Key? key}) : super(key: key);

  @override
  State<OpenQuestionStd> createState() => _OpenQuestionStdState();
}

class _OpenQuestionStdState extends State<OpenQuestionStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Open Question"),
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
              height: k16Space,
            ),
            TextField(
              maxLines: 8,
              decoration: InputDecoration(
                hintText: "Answer",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
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
