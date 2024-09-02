

import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/core/utils/navigator_context.dart';
import 'package:union_bank_app_clone/data/mock_data.dart';
import 'package:union_bank_app_clone/ui/screens/home_screen.dart';

class UnionBankLoginScreen extends StatelessWidget {
  static String routeName = 'UnionBankLoginScreen';

  const UnionBankLoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // UnionBank Logo
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Image.asset(
                    'assets/unionbank_logo.png', // Replace with your image asset path
                    height: 60,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Profile Picture and Name
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/user.jpg'),
            ),
            const SizedBox(height: 10),
            const Text(
              'MAR*********',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),
            // Quick Balance and Use Password Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Show bottom sheet when "Quick Balance" is clicked
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                      ),
                      builder: (context) => _buildQuickBalanceSheet(context),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    primary: const Color(0xFFF97B2F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),

                  ),
                  child: const Center(
                    child: SizedBox(
                      height: 40,
                      child: Text(
                        'Quick Balance',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {
                    NavigatorContext.add(HomeScreen.routeName);
                  },
                  child: const Text(
                    'Use Password',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Additional Options
            TextButton(
              onPressed: () {

              },
              child: const Text(
                'Forgot my User ID or Password',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Implement Unblock my Profile action
              },
              child: const Text(
                'Unblock my Profile',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 16,
                ),
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Scroll up for more options',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            // Bottom Navigation
            GestureDetector(
              onTap: () {
                // Implement ATM & Branch Locator action
              },
              child: Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'ATM & Branch Locator',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.black),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  // Method to build the bottom sheet for Quick Balance
  Widget _buildQuickBalanceSheet(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Quick Balance',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.credit_card, size: 40, color: Colors.black),
            title: Text(
              MockData.accountNickName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text('SSS Quick Card\n${MockData.accountNumber}'),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Available Balance',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  'PHP ${MockData.accountBalance}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
