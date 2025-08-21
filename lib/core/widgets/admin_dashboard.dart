import 'package:crm_admin/features/layout/widgets/navbar.dart';
import 'package:crm_admin/features/layout/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class Homepart extends StatelessWidget {
  const Homepart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Sidebar(),
            Expanded(child: Navbar()),
          ],
        ),
      ),
    );
  }
}
