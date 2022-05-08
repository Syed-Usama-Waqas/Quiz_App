import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CodeCorrection extends StatefulWidget {
  const CodeCorrection({Key? key}) : super(key: key);

  @override
  State<CodeCorrection> createState() => _CodeCorrectionState();
}

class _CodeCorrectionState extends State<CodeCorrection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Code Correction"),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: k16Space * 2,
            ),
            Text(
              "Enter Question Code",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: k16Space,
            ),
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "Question Code",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
            SizedBox(
              height: k16Space * 2,
            ),
            Text(
              "Enter Answer Code",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: k16Space,
            ),
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "Correct Code",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
            Spacer(),
            CustomButton(
                text: "Add Question",
                onTap: () {
                  Navigator.pop(context);
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
