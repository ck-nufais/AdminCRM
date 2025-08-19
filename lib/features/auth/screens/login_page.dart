import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/images.dart';
import '../widgets/login_button.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(logo, fit: BoxFit.cover, height: 80, width: 76),
                Text(
                  'LOGIN',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
                const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding:  EdgeInsets.only(left: 0,right: 0,top: 12,bottom: 12), // controls the visible size
                      child: SvgPicture.asset(
                        usericon,color: Colors.black,
                        fit: BoxFit.contain,
                      ),
                    ),

                    hintText: 'username',
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
              ),
                const SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 300,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding:  EdgeInsets.only(left: 0,right: 0,top: 12,bottom: 12), // controls the visible size
                      child: SvgPicture.asset(
                        passicon,color: Colors.black,
                        fit: BoxFit.contain,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding:  EdgeInsets.only(left: 0,right: 0,top: 12,bottom: 12), // controls the visible size
                      child: SvgPicture.asset(
                        showicon,color: Colors.black,
                        fit: BoxFit.contain,
                      ),
                    ),

                    hintText: 'password',
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
              ),
                const SizedBox(height: 20),
                LoginButton(),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child:Stack(
              children: [
                Container(
                  //color: Colors.yellow,
                  width: double.infinity,
                  height: double.infinity,
            ),
                   Positioned(
                     left: 10,
                     right: -70,
                     child: Image.asset(
                       'assets/icons/loginVector.png',
                       fit: BoxFit.cover,
                       height: 650,
                       width: 800,

                     ),
                   ),

              ],
            )
          ),
        ],
      ),
    );
  }
}
