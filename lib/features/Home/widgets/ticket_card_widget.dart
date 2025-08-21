import 'package:crm_admin/features/Home/widgets/track_widget.dart';
import 'package:flutter/material.dart';

class TicketCardWidget extends StatelessWidget {
  const TicketCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      padding: EdgeInsets.only(left: 10, right: 10),
      height: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '#75457684',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                'Company Name',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          TrackWidget(),
        ],
      ),
    );
  }
}
