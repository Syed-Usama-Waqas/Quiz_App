import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CodeCorrectionStd extends StatefulWidget {
  const CodeCorrectionStd({Key? key}) : super(key: key);

  @override
  State<CodeCorrectionStd> createState() => _CodeCorrectionStdState();
}

class _CodeCorrectionStdState extends State<CodeCorrectionStd> {
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
            const SizedBox(
              height: k16Space * 2,
            ),
            const Text(
              "Question Code",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: k16Space,
            ),
            TextFormField(
              initialValue: "Void Static main(){}",
              maxLines: 6,
              readOnly: true,
              decoration: InputDecoration(
                hintText: "Question Code",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
            const SizedBox(
              height: k16Space * 2,
            ),
            const Text(
              "Answer Code",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: k16Space,
            ),
            TextFormField(
              initialValue: "Void Static main(){}",
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "Answer Code",
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
