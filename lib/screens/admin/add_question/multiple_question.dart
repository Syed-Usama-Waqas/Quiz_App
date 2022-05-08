import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MultipleQuestion extends StatefulWidget {
  const MultipleQuestion({Key? key}) : super(key: key);

  @override
  State<MultipleQuestion> createState() => _MultipleQuestionState();
}

class _MultipleQuestionState extends State<MultipleQuestion> {
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
            SizedBox(
              height: k16Space * 2,
            ),
            Text(
              "Enter Question",
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
                hintText: "Question",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
            SizedBox(
              height: k16Space * 2,
            ),
            Row(
              children: [
                Radio(
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      grpValue = value.toString();
                    });
                  },
                  groupValue: grpValue,
                  value: "1",
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Option 1",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      grpValue = value.toString();
                    });
                  },
                  groupValue: grpValue,
                  value: "2",
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Option 2",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      grpValue = value.toString();
                    });
                  },
                  groupValue: grpValue,
                  value: "3",
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Option 3",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      grpValue = value.toString();
                    });
                  },
                  groupValue: grpValue,
                  value: "4",
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Option 4",
                    ),
                  ),
                ),
              ],
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
