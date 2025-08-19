import 'package:crm_admin/features/customer_registeration/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class SecondRowWidget extends StatelessWidget {
  const SecondRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextfieldWidget(title: 'Company Name', hinttxt: 'enter company name'),
        TextfieldWidget(title: 'Address', hinttxt: 'enter address'),
      ],
    );
  }
}