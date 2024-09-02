import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/core/common/app_color.dart';
import 'package:union_bank_app_clone/core/providers/navbar_provider.dart';
import 'package:union_bank_app_clone/data/labels.dart';

class BottomNavBar extends StatelessWidget implements PreferredSizeWidget {
  final NavBarProvider navBarProvider;
  const BottomNavBar({
    super.key,
    required this.navBarProvider,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColor.primaryColor,
      unselectedItemColor: AppColor.textColor,
      unselectedFontSize: 10.0,
      selectedFontSize: 11.0,
      currentIndex: navBarProvider.selectedNavIndex,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.dashboard),
          label: Labels.dashboard.toUpperCase(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.send),
          label: Labels.sendReceive.toUpperCase(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.receipt),
          label: Labels.payBills.toUpperCase(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.phone_android),
          label: Labels.buyLoad.toUpperCase(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.more_horiz),
          label: Labels.more.toUpperCase(),
        ),
      ],
      onTap: (index) {
        navBarProvider.setSelectedNavIndex(index);
      },
    );
  }
}
