import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(onPressed: () {

      }, child: Text('Login'),style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF002660),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10))

      ),),
    );
  }
}