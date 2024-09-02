import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:union_bank_app_clone/core/common/app_color.dart';
import 'package:union_bank_app_clone/core/enums/navbar_enum.dart';
import 'package:union_bank_app_clone/core/providers/navbar_provider.dart';
import 'package:union_bank_app_clone/ui/screens/home/buy_load_content.dart';
import 'package:union_bank_app_clone/ui/screens/home/dashboard_content.dart';
import 'package:union_bank_app_clone/ui/screens/home/more_content.dart';
import 'package:union_bank_app_clone/ui/screens/home/pay_bills_content.dart';
import 'package:union_bank_app_clone/ui/screens/home/send_receive_content.dart';
import 'package:union_bank_app_clone/ui/widgets/bottom_navbar.dart';
import 'package:union_bank_app_clone/ui/widgets/main_appbar.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget content(int index) {
    if(index == NavBarEnum.DASHBOARD) {
      return DashboardContent();
    } else if(index == NavBarEnum.SEND_RECEIVE) {
      return SendReceiveContent();
    } else if(index == NavBarEnum.PAY_BILLS) {
      return PayBillsContent();
    } else if(index == NavBarEnum.BUY_LOAD) {
      return BuyLoadContent();
    }else if(index == NavBarEnum.MORE) {
      return MoreContent();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NavBarProvider>(builder: (context, provider, child) {
      return Scaffold(
        appBar: MainAppBar(
          title: provider.title,
        ),
        backgroundColor: AppColor.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: content(provider.selectedNavIndex),
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          navBarProvider: provider,
        ),
      );
    });
  }
}
