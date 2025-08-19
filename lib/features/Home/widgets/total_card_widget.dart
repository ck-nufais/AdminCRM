import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TotalCardWidget extends StatelessWidget {
  const TotalCardWidget({
    super.key,
    required this.title,
    required this.count,
    required this.color,
    required this.img,
  });
  final String title;
  final Color color;
  final int count;
  final img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 277,
      height: 115,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0x1A000000),
            offset: const Offset(0, 1),
            blurRadius: 1,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                ' $count',
                style: TextStyle(
                  color: color,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Container(
            width: 41,
            height: 41,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                img,
                width: 41,
                height: 41,
                fit: BoxFit.contain,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
