import 'package:examenafname/utils/constants.dart';
import 'package:examenafname/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ExamHomeScreen extends StatefulWidget {
  const ExamHomeScreen({Key? key}) : super(key: key);

  @override
  State<ExamHomeScreen> createState() => _ExamHomeScreenState();
}

class _ExamHomeScreenState extends State<ExamHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Exam'),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          children: [
            const SizedBox(
              height: k16Space,
            ),
            const Text("Questions"),
            const SizedBox(
              height: k16Space,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: const Text("Question"),
                    onTap: () {
                      if (index == 0) {
                        Navigator.pushNamed(
                          context,
                          "/multipleQuestionStd",
                        );
                      } else if (index == 1) {
                        Navigator.pushNamed(
                          context,
                          "/openQuestionStd",
                        );
                      } else {
                        Navigator.pushNamed(
                          context,
                          "/codeCorrectionStd",
                        );
                      }
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 2.0,
                    color: Colors.grey,
                  );
                },
              ),
            ),
            const SizedBox(
              height: k16Space,
            ),
            CustomButton(
                text: "End Exam",
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Alert"),
                          content:
                              const Text("Are you really want to end exam?"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                              },
                              child: const Text("Yes"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("No"),
                            ),
                          ],
                        );
                      });
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
