import 'package:crm_admin/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  bool isCollapsed = true;
  int selectedIndex = 0;
  int? expandedIndex;

  final List<Map<String, dynamic>> menuItems = [
    {'icon': SidebarIcons.home, 'title': 'Home'},
    {
      'icon': SidebarIcons.register,
      'title': 'Registration',
      'subMenu': [
        {'icon': customerReg, 'title': 'Customer Register'},
        {'icon': employeeReg, 'title': 'Employee Register'},
        {'icon': ticketReg, 'title': 'Ticket Register'},
        {'icon': ticketAssign, 'title': 'Assign Ticket'},
        {'icon': softwareReg, 'title': 'Software Register'},
      ],
    },
    {
      'icon': SidebarIcons.ticket,
      'title': 'Chats',
      'subMenu': [
        {'icon': customerReg, 'title': 'Customer Chat'},
        {'icon': employeeReg, 'title': 'Employee Chat'},
      ],
    },
    {'icon': SidebarIcons.msg, 'title': 'All tickets'},
  ];

  @override
  Widget build(BuildContext context) {
    return  Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            width: isCollapsed ? 125 : 330,
            color: Colors.white24,
            child: Column(
              children: [
                // HEADER
                _buildHeader(),
                const SizedBox(height: 25),

                // MENU LIST
                Expanded(
                  child: ListView.builder(
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      bool isSelected = selectedIndex == index;
                      bool isExpanded = expandedIndex == index;
                      List DropDownItems =
                          List<Map<String, dynamic>>.from(
                        menuItems[index]['subMenu'] ?? [],
                      );
                      bool HasDropDown = !DropDownItems.isEmpty;

                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: (isCollapsed ? 34 : 8),
                              right: (isCollapsed ? 34 : 8),
                              top: 15,
                            ),
                            child: InkWell(
                              onTap: () => setState(() {
                                expandedIndex = (selectedIndex == index)
                                    ? (expandedIndex == index ? null : index)
                                    : null;
                                selectedIndex = index;
                              }),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: isSelected ? const Color(0xFF002660) : Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: const Offset(1.5, 1.5),
                                    ),
                                  ],
                                ),
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    final canShowText = constraints.maxWidth > 50;

                                    return Row(
                                      children: [
                                        SvgPicture.asset(
                                          menuItems[index]['icon'],
                                          width: 32,
                                          color: isSelected ? Colors.white : Colors.black,
                                        ),
                                        if (canShowText) const SizedBox(width: 12),
                                        if (canShowText)
                                          Expanded(
                                            child: Text(
                                              menuItems[index]['title'],
                                              overflow: TextOverflow.fade,
                                              softWrap: false,
                                              style: TextStyle(
                                                color: isSelected ? Colors.white : Colors.black,
                                              ),
                                            ),
                                          ),
                                        if (canShowText && HasDropDown)
                                          Icon(
                                            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                                            color: isSelected ? Colors.white : Colors.black,
                                          ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          if (isExpanded && !isCollapsed)
                            Column(
                              children: DropDownItems.map(
                                (subItem) => InkWell(
                                  onTap: () {
                                    // print("Clicked ${subItem['title']}");
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 50,
                                      top: 12,
                                      bottom: 12,
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          subItem['icon'],
                                          width: 18,
                                          height: 18,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          subItem['title'],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).toList(),
                            ),
                        ],
                      );
                    },
                  ),
                ),

                _buildLogout(),
                const SizedBox(height: 80),
              ],
            ),
          ),

   
          if (isCollapsed)
            Positioned(
              top: 30,
              right: -10,
              child: IconButton(
                icon: SvgPicture.asset(SidebarIcons.arrow_h),
                onPressed: () {
                  setState(() {
                    isCollapsed = !isCollapsed;
                  });
                },
              ),
            ),
        ],
      );
  }

  Widget _buildHeader() {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      color: Colors.white,
      child: Row(
        mainAxisAlignment:
            !isCollapsed ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image.asset(
              'assets/logo/logo.png',
              width: 78,
              height: 78,
              fit: BoxFit.contain,
            ),
          ),
          if (!isCollapsed)
            IconButton(
              icon:  Transform.rotate(angle: 3.14,child: SvgPicture.asset(SidebarIcons.arrow_h)),
              onPressed: () {
                setState(() {
                  isCollapsed = true;
                });
              },
            ),
        ],
      ),
    );
  }

  Widget _buildLogout() {
    return Padding(
      padding: EdgeInsets.only(
        left: (isCollapsed ? 28 : 7),
        right: (isCollapsed ? 28 : 7),
        top: 15,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(1.5, 1.5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(SidebarIcons.logout, width: 32, color: Colors.black),
            if (!isCollapsed) const SizedBox(width: 5),
            if (!isCollapsed)
              const Text("Logout", style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}