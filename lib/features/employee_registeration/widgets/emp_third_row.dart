import 'package:crm_admin/features/customer_registeration/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class EmpThirdRow extends StatelessWidget {
  const EmpThirdRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextfieldWidget(
          title: 'Phone',
          hinttxt: 'enter phone number',
        ),
        TextfieldWidget(
          title: 'Email ID',
          hinttxt: 'enter email id',
        ),
      ],
    );
  }
}