import 'package:crm_admin/core/widgets/admin_dashboard.dart';
import 'package:crm_admin/features/auth/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: AdminDashboard(),
        );

  }
}
