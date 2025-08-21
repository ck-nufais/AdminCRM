
import 'package:crm_admin/features/layout/screens/template.dart';
import 'package:crm_admin/features/layout/widgets/navbar.dart';
import 'package:crm_admin/features/layout/widgets/sidebar.dart';
import 'package:crm_admin/utils/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => NavigationProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            backgroundColor: Colors.transparent, 
          ),
        ),
      ),
      home: Homepart(),
    );
  }
}
