import 'package:crm_admin/features/customer_registeration/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class FirstRowWidget extends StatelessWidget {
  const FirstRowWidget({super.key, required this.id,required this.title});

  final id;
  final title;

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
            // SizedBox(height: 13),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xFFF9F9F9),
                border: Border.all(
                  color: Color(0x80000000),
                  width: 0.5, // border width
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  id,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        TextfieldWidget(title: 'Password', hinttxt: 'enter password'),
      ],
    );
  }
}
