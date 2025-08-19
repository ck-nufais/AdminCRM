import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key, required this.title, this.hinttxt});
  final String title;
  final String? hinttxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 0, top: 0, right: 0),
      child: Column(
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(
            height: 45,
            width: 350,
            child: CupertinoTextField(
              autofillHints: null,
              placeholder: hinttxt,
              placeholderStyle: TextStyle(
                fontSize: 14,
                color: Color(0x4D000000),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFF9F9F9),
                border: Border.all(
                  color: Color(0x80000000),
                  width: 0.5, // border width
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
