import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  final List<String> menuItems;
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const Navbar({
    super.key,
    required this.menuItems,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          // ✅ Admin Info (left)
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Admin",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 2),
              Text(
                "welcome back,",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
            ],
          ),

          const Spacer(),

          // ✅ Menu (center)
          Row(
            spacing: 35,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(menuItems.length, (index) {
              final isSelected = selectedIndex == index;
              return InkWell(
                onTap: () => onItemSelected(index),
                child: Text(
                  menuItems[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                    color: isSelected ? Colors.black : Colors.blueGrey[400],
                  ),
                ),
              );
            }),
          ),

          // ✅ Profile icon (right)
          Image.asset(
            'assets/logo/logo.png',
            width: 32,
            height: 32,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
