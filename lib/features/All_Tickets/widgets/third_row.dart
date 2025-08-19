import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdRowWidget extends StatelessWidget {
  const ThirdRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //SizedBox(width: 20),
        Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Branch Name',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 45,
              width: 350,
              child: CupertinoTextField(
                placeholder: 'enter branch name',
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
                suffix: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Add',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF002660),
                        ),
                      ),
                      SizedBox(width: 4), // spacing
                      Icon(Icons.add, color: Color(0xFF002660)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Software Type',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                width: 350,
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xFFF9F9F9),
                  border: Border.all(color: Color(0x80000000), width: 0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: null,
                    hint: Text(
                      'Select Software',
                      style: TextStyle(fontSize: 14, color: Color(0x4D000000)),
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0x80000000),
                    ),
                    isExpanded: true,
                    items:
                        [
                          'Web Application',
                          'Mobile App',
                          'Desktop Software',
                          'Database Management',
                          'Operating System',
                        ].map((String software) {
                          return DropdownMenuItem<String>(
                            value: software,
                            child: Text(
                              software,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                    onChanged: (String? newValue) {
                      print('Selected: $newValue');
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


