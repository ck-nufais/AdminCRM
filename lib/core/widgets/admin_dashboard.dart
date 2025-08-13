
import 'package:flutter/material.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  bool isCollapsed = false;
  int selectedIndex = 0;

  final List<Map<String, dynamic>> menuItems = [
    {'icon': Icons.dashboard, 'title': 'Dashboard'},
    {'icon': Icons.people, 'title': 'Customers'},
    {'icon': Icons.leaderboard, 'title': 'Leads'},
    {'icon': Icons.bar_chart, 'title': 'Reports'},
    {'icon': Icons.settings, 'title': 'Settings'},
  ];

  final pages = [
    Center(child: Text("Dashboard Page")),
    Center(child: Text("Customers Page")),
    Center(child: Text("Leads Page")),
    Center(child: Text("Reports Page")),
    Center(child: Text("Settings Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isCollapsed ? 70 : 220,
            color: Colors.white,
            child: Column(
              children: [
                // Header
                Container(
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: isCollapsed
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.spaceBetween,
                    children: [
                      if (!isCollapsed)
                        const Text(
                          "CRM Admin",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      IconButton(
                        icon: Icon(
                          isCollapsed ? Icons.arrow_right : Icons.arrow_left,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            isCollapsed = !isCollapsed;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                // Menu
                Expanded(
                  child: ListView.builder(
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      bool isSelected = selectedIndex == index;
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                            top: 8,
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Color(0xFF002660)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  menuItems[index]['icon'] as IconData,
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.black,
                                ),
                                if (!isCollapsed) ...[
                                  const SizedBox(width: 12),
                                  Text(
                                    menuItems[index]['title'] as String,
                                    style: TextStyle(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            child: Container(
              color: const Color(0xFFF5F6FA),
              child: pages[selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}
