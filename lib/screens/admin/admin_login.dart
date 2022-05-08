import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AdminLoginScreen extends StatefulWidget {
  const AdminLoginScreen({Key? key}) : super(key: key);

  @override
  State<AdminLoginScreen> createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  //login functie
  // static Future<User?> loginUsingEmailPassword(
  //     {required String email,
  //     required String password,
  //     required BuildContext context}) async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User? user;
  //   try {
  //     UserCredential userCredential = await auth.signInWithEmailAndPassword(
  //         email: email, password: password);
  //     user = userCredential.user;
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == "gebruiker niet gevonden") {
  //       print("Geen gebruiker gevonden voor dit email");
  //     }
  //   }
  //   return user;
  // }

  @override
  Widget build(BuildContext context) {
    //textfilled controller
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
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
              "Login As Admin",
              style: TextStyle(
                color: Colors.black,
                fontSize: 44.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: k16Space * 3,
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Username",
                prefixIcon: Icon(Icons.mail, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: k16Space,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock, color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/studentLogin");
              },
              child: const Text(
                "login as Student?",
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
                Navigator.of(context).pushNamed('/adminHomeScreen');
                // }
              },
            ),
          ],
        ),
      ),
    );
  }
}
