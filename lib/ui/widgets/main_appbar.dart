import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/core/common/app_color.dart';
import 'package:union_bank_app_clone/core/utils/navigator_context.dart';
import 'package:union_bank_app_clone/ui/screens/account_details_screen.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MainAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.backgroundColor,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            NavigatorContext.add(AccountDetailsScreen.routeName);
          },
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/user.jpg'), // Replace with your image asset path
          ),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.qr_code, color: Colors.grey),
          onPressed: () {},
        ),
        Stack(
          children: [
            IconButton(
              icon: const Icon(Icons.mail_outline, color: Colors.grey),
              onPressed: () {
                // Handle notifications action
              },
            ),
            Positioned(
              right: 12,
              top: 12,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.logout, color: Colors.grey),
          onPressed: () {},
        ),
      ],
    );
  }
}
