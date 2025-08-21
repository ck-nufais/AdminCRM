import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class login_textfield extends StatelessWidget {
  const login_textfield({

    super.key,required this.hinttext,required this.preIcon
  });
  final hinttext;
  final preIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding:  EdgeInsets.only(left: 0,right: 0,top: 12,bottom: 12), // controls the visible size
            child: SvgPicture.asset(
              preIcon,color: Colors.black,
              fit: BoxFit.contain,
            ),
          ),

          hintText: hinttext,
          hintStyle: const TextStyle(
              fontSize: 14,
              color: Colors.blueGrey),
          filled: true,
          fillColor: const Color(0xFFAABEEF),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}