import 'package:crm_admin/core/constants/images.dart';
import 'package:crm_admin/features/Home/widgets/recent_ticket_widget.dart';
import 'package:crm_admin/features/Home/widgets/total_card_widget.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //total numbers row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TotalCardWidget(
                color: Color(0xFF002660),
                count: 7456,
                title: 'Total Customers',
                img: userTotal,
              ),
              TotalCardWidget(
                title: 'Total Employees',
                count: 56,
                color: Color(0xFF008000),
                img: employeeTotal,
              ),
              TotalCardWidget(
                title: 'Total Tickets',
                count: 5348,
                color: Color(0xFFFFA500),
                img: ticketTotal,
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 60,
            children: [
              //recent ticket view
              RecentTicketWidget(),

              Column(
                spacing: 10,
                children: [
                  //Quick actions
                  Container(
                    height: 376,
                    width: 400,
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
                        //quick action header
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            spacing: 15,
                            children: [
                              SvgPicture.asset(
                                quick,
                                fit: BoxFit.contain,
                                width: 15.17,
                                height: 21.67,
                                color: Color(0xFFAABEEF),
                              ),
                              Text(
                                'Quick Actions',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        QuickActionListWidget(
                          img: customerReg,
                          title: 'Customer Register',
                        ),
                        QuickActionListWidget(
                          img: employeeReg,
                          title: 'Employee Register',
                        ),
                        QuickActionListWidget(
                          img: ticketReg,
                          title: 'Ticket Register',
                        ),
                        QuickActionListWidget(
                          img: ticketAssign,
                          title: 'Assign Ticket',
                        ),

                        QuickActionListWidget(
                          img: softwareReg,
                          title: 'Software Register',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  //recent chats
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 144,
                    width: 400,
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
                      spacing: 15,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Text(
                                'Recent Customer Chats',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                width: 59,
                                height: 20,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF002660),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    'View All',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //chats
                        Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) =>
                                RecentChatCardWidget(),
                            separatorBuilder: (context, index) =>
                                SizedBox(width: 15),
                            itemCount: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RecentChatCardWidget extends StatelessWidget {
  const RecentChatCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 30),
        Text(
          'Name',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class QuickActionListWidget extends StatelessWidget {
  const QuickActionListWidget({
    super.key,
    required this.img,
    required this.title,
  });

  final String title;
  final img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 15,
          children: [
            SvgPicture.asset(
              img,
              fit: BoxFit.contain,
              width: 22.92,
              height: 18.84,
              color: Color(0xFFAABEEF),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
