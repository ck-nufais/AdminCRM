import 'package:flutter/material.dart';

class TrackWidget extends StatelessWidget {
  const TrackWidget({super.key});
  final String level = 'Assigned';

  Color getLevelColor() {
    switch (level) {
      case 'pending':
        return Color(0xFFEED202);
      case 'Assigned':
        return Color(0xFF008000);
      case 'rejected':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: getLevelColor(),
      ),
      child: Center(
        child: Text(
          level,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
