import 'package:crm_admin/core/constants/images.dart';
import 'package:crm_admin/features/Home/widgets/ticket_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecentTicketWidget extends StatelessWidget {
  const RecentTicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, right: 12, left: 12),
      height: 545,
      width: 410,
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0x1A000000),
            offset: const Offset(0, 1),
            blurRadius: 1,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                ticketTotal,
                width: 21.6,
                height: 15.17,
                fit: BoxFit.contain,
                color: Color(0xFFFFA500),
              ),
              Text(
                'Recent Tickets',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF002660),
                  ),
                ),
              ),
            ],
          ),
          CupertinoSearchTextField(
            suffixIcon: Icon(Icons.close, color: Colors.black),
            prefixIcon: Icon(Icons.search, color: Colors.black),
            decoration: BoxDecoration(
              color: Color(0xFFAABEEF),
              borderRadius: BorderRadius.circular(20),
            ),
            itemSize: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 30),
              child: ListView.separated(
                itemBuilder: (context, index) => TicketCardWidget(),
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
