import 'package:crm_admin/features/customer_registeration/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class EmpSecondRow extends StatelessWidget {
  const EmpSecondRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextfieldWidget(
          title: 'Employee Name',
          hinttxt: 'enter employe name',
        ),
        Column(
          spacing: 6,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Job Role',
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
                  border: Border.all(
                    color: Color(0x80000000),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: null,
                    hint: Text(
                      'Job Role',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0x4D000000),
                      ),
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
