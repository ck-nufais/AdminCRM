import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final List<String> menuItems = ["Home", "Registration", "Chat","Profile"];
  int selectedIndex = 0; // ✅ now handled internally

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Admin",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "welcome back,",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
          Spacer(),
    
          // ✅ Menu (center)
          Row(
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(menuItems.length, (index) {
              final isSelected = selectedIndex == index;
              return 

                 InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index; 
                    });
                  },
                  child: Text(
                    menuItems[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.w400,
                      color: isSelected
                          ? Colors.black
                          : Colors.blueGrey[400],
                    ),
                  ),
                // ),
              );
            }),
          ),
    
          // ✅ Profile icon (right aligned)
          CircleAvatar(
            backgroundColor: Colors.blue.shade50,
            radius: 18,
            child: const Icon(Icons.person, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
