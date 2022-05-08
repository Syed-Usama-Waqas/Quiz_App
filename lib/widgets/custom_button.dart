import 'package:examenafname/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.text, required this.onTap})
      : super(key: key);
  VoidCallback onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RawMaterialButton(
        fillColor: kPrimaryColor,
        elevation: 0.0,
        padding: const EdgeInsets.symmetric(vertical: k16Space),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
