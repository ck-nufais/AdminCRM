import 'package:crm_admin/features/customer_registeration/widgets/first_row.dart';
import 'package:crm_admin/features/customer_registeration/widgets/fourth_row.dart';
import 'package:crm_admin/features/customer_registeration/widgets/register_btn_widget.dart';
import 'package:crm_admin/features/customer_registeration/widgets/second_row.dart';
import 'package:crm_admin/features/customer_registeration/widgets/textfield_widget.dart';
import 'package:crm_admin/features/customer_registeration/widgets/third_row.dart';

import 'package:flutter/material.dart';

class CustomerRegister extends StatelessWidget {
  const CustomerRegister({super.key});

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
              'Customer Register',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              width: 762,
              height: 562,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF9F9F9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  //1st row
                  FirstRowWidget(id: 'CUS-0001', title: 'Customer ID'),
                  //2nd row
                  SecondRowWidget(),
                  //3rd row
                  ThirdRowWidget(),
                  //4th row
                  FourthRowWidget(),
                  TextfieldWidget(
                    title: 'Phone',
                    hinttxt: 'enter phone number',
                  ),
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
