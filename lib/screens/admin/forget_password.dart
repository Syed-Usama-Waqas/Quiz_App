import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Forget Password"),
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: k16Space * 2,
            ),
            const Text(
              "You will receive a reset password link on your email.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: k16Space * 2,
            ),
            CustomButton(text: "Send Reset Email", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
