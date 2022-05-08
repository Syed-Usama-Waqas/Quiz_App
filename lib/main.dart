import 'package:examenafname/screens/admin/add_question.dart';
import 'package:examenafname/screens/admin/add_question/code_correction.dart';
import 'package:examenafname/screens/admin/add_question/multiple_question.dart';
import 'package:examenafname/screens/admin/add_question/open_question.dart';
import 'package:examenafname/screens/admin/add_student.dart';
import 'package:examenafname/screens/admin/add_student/add_student_detail.dart';
import 'package:examenafname/screens/admin/admin_home_screen.dart';
import 'package:examenafname/screens/admin/admin_login.dart';
import 'package:examenafname/screens/admin/forget_password.dart';
import 'package:examenafname/screens/admin/student_detail/location_detail.dart';
import 'package:examenafname/screens/admin/student_detail/student_detail.dart';
import 'package:examenafname/screens/selection_screen.dart';
import 'package:examenafname/screens/student/add_question/code_correction_std.dart';
import 'package:examenafname/screens/student/add_question/multiple_question_std.dart';
import 'package:examenafname/screens/student/add_question/open_question_std.dart';
import 'package:examenafname/screens/student/exam_screen/exam_home_screen.dart';
import 'package:examenafname/screens/student/student_home_screen.dart';
import 'package:examenafname/screens/student/student_login.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SelectionScreen(),
        '/adminHomeScreen': (context) => const AdminHomeScreen(),
        '/adminLoginScreen': (context) => const AdminLoginScreen(),
        '/studentLogin': (context) => const StudentLogin(),
        '/addQuestion': (context) => const AddQuestion(),
        '/multipleQuestion': (context) => const MultipleQuestion(),
        '/openQuestion': (context) => const OpenQuestion(),
        '/codeCorrection': (context) => const CodeCorrection(),
        '/addStudent': (context) => const AddStudent(),
        '/addStudentDetail': (context) => const AddStudentDetail(),
        '/studentHomeScreen': (context) => const StudentHomeScreen(),
        '/examHomeScreen': (context) => const ExamHomeScreen(),
        '/multipleQuestionStd': (context) => const MultipleQuestionStd(),
        '/openQuestionStd': (context) => const OpenQuestionStd(),
        '/codeCorrectionStd': (context) => const CodeCorrectionStd(),
        '/studentDetail': (context) => const StudentDetail(),
        '/locationDetail': (context) => const LocationDetail(),
        '/forgetPassword': (context) => const ForgetPassword(),
      },
    );
  }
}
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
// //init FireBase app
// //   Future<FirebaseApp> _initializeFirebase() async {
// //     FirebaseApp firebaseApp = await Firebase.initializeApp();
// //     return firebaseApp;
// //   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: kPrimaryColor,
//       ),
//       body: const AdminLoginScreen(),
//       // body: FutureBuilder(
//       //   future: _initializeFirebase(),
//       //   builder: (context, snapshot) {
//       //     if (snapshot.connectionState == ConnectionState.done) {
//       //       return LoginScreen();
//       //     }
//       //     return const Center(child: CircularProgressIndicator());
//       //   },
//       // ),
//     );
//   }
// }
