import 'package:crm_admin/features/customer_registeration/widgets/first_row.dart';

import 'package:crm_admin/features/customer_registeration/widgets/register_btn_widget.dart';

import 'package:crm_admin/features/employee_registeration/widgets/emp_secon_row.dart';
import 'package:crm_admin/features/employee_registeration/widgets/emp_third_row.dart';

import 'package:flutter/material.dart';

class EmployeeRegister extends StatelessWidget {
  const EmployeeRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Employee Register',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              width: 770,
              height: 414,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF9F9F9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  //1st row
                  FirstRowWidget(id: 'EMP-0001', title: 'Employee ID'),
                  //2nd row
                  EmpSecondRow(),
                  //3rd row
                  EmpThirdRow(),

                  SizedBox(height: 6),
                  RegisterButtonWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
