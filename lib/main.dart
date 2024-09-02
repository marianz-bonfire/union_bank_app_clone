import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:union_bank_app_clone/core/app_routes.dart';
import 'package:union_bank_app_clone/core/providers/banks_provider.dart';
import 'package:union_bank_app_clone/core/providers/navbar_provider.dart';
import 'package:union_bank_app_clone/core/utils/navigator_context.dart';
import 'package:union_bank_app_clone/ui/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavBarProvider()),
        ChangeNotifierProvider(create: (context) => BanksProvider()),
      ],
      child: MaterialApp(
        navigatorKey: NavigatorContext.key,
        debugShowCheckedModeBanner: false,
        initialRoute: UnionBankLoginScreen.routeName,
        routes: AppRoutes.routes,
      ),
    );
  }
}
