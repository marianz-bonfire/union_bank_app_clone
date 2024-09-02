
import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/ui/login_screen.dart';
import 'package:union_bank_app_clone/ui/screens/account_details_screen.dart';
import 'package:union_bank_app_clone/ui/screens/home_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    UnionBankLoginScreen.routeName: (context) => UnionBankLoginScreen(),
    HomeScreen.routeName: (context) => HomeScreen(),
    AccountDetailsScreen.routeName: (context) => AccountDetailsScreen(),
  };
}
