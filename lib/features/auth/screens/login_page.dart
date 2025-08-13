import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Row(
           children: [
             Column(
               children: [
         SvgPicture.asset(
           'assets/icons/home.svg',
           height: 50,
           width: 50,
         )
               ],
             )
           ],
         ),
    );
  }
}
