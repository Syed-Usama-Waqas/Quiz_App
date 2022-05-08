import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({Key? key}) : super(key: key);

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  var studenten;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: k16Space * 10,
            ),
            const Text(
              "ExamenAfname",
              style: TextStyle(
                color: Colors.red,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Student Portal",
              style: TextStyle(
                color: Colors.black,
                fontSize: 44.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "(Participating Students)",
              style: TextStyle(
                color: kTextSecondaryColor,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: k16Space * 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: k16Space),
              child: DropdownButton(
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                isExpanded: true,
                value: "1",
                items: [
                  const DropdownMenuItem(
                    value: "1",
                    child: const Text('1'),
                  ),
                  const DropdownMenuItem(
                    value: "2",
                    child: Text('2'),
                  ),
                ],
                onChanged: (value) {
                  // debugPrint('selected onchange: $value');
                  // setState(
                  //       () {
                  //     debugPrint('make selected: $value');
                  //     // Selected value will be stored
                  //     studenten = value;
                  //     // Default dropdown value won't be displayed anymore
                  //   },
                  // );
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/adminLoginScreen");
              },
              child: const Text(
                "login as Admin?",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              height: k16Space * 3,
            ),
            CustomButton(
              text: "Login",
              onTap: () async {
                //aanmelden knop
                // User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text context: context);
                // print(user);
                // if (user != null){
                Navigator.of(context).pushNamed('/studentHomeScreen');
                // }
              },
            ),
          ],
        ),
      ),
    );
  }
}
