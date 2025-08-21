import 'package:crm_admin/features/All_Tickets/screens/customer_register.dart';
import 'package:crm_admin/features/Home/screens/home.dart';
import 'package:crm_admin/features/layout/bloc/layout_bloc.dart';
import 'package:crm_admin/features/layout/widgets/navbar.dart';
import 'package:crm_admin/features/layout/widgets/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Homepart extends StatelessWidget {
  const Homepart({super.key});
  @override
  Widget build(BuildContext context) {
  final List<String> menuItems = ["Home", "Registration", "Chat", "Profile"];
    return BlocProvider(
      create: (context) => LayoutBloc(),
      child: Scaffold(
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Sidebar(),
              Expanded(child: Column(children: [Navbar(menuItems: menuItems,selectedIndex: 1,onItemSelected: (value) {
                
              },), CustomerRegister()])),
            ],
          ),
        ),
      ),
    );
  }
}
