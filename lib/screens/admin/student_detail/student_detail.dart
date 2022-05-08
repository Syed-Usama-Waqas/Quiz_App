import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({Key? key}) : super(key: key);

  @override
  State<StudentDetail> createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Grade Map"),
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          children: [
            SizedBox(
              height: k16Space,
            ),
            Text(
              "Result Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: k16Space * 2,
            ),
            Row(
              children: [
                Text(
                  "Points",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: k16Space * 2,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(),
                  ),
                ),
                SizedBox(
                  width: k16Space * 2,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit))
              ],
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                    child: CustomButton(
                  text: "Answer",
                  onTap: () {},
                )),
                SizedBox(
                  width: k16Space,
                ),
                Expanded(
                    child: CustomButton(
                  text: "Location",
                  onTap: () {
                    Navigator.pushNamed(context, '/locationDetail');
                  },
                )),
              ],
            ),
            SizedBox(
              height: k16Space,
            ),
          ],
        ),
      ),
    );
  }
}
