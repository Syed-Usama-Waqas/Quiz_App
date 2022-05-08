import 'package:examenafname/utils/constants.dart';
import 'package:flutter/material.dart';

class LocationDetail extends StatefulWidget {
  const LocationDetail({Key? key}) : super(key: key);

  @override
  State<LocationDetail> createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location Detail"),
        backgroundColor: kPrimaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: kPrimaryColor,
          ),
          SizedBox(
            height: k16Space * 2,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: k16Space),
            child: Text(
              "Location Details...",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
