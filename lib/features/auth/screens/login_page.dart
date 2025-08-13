import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/images.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Row(
           children: [
             Column(
               children: [

                 Image.asset(logo,fit: BoxFit.cover,height: 50,width: 50,)
               ],
             )
           ],
         ),
    );
  }
}
