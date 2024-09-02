import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/core/common/app_color.dart';
import 'package:union_bank_app_clone/ui/widgets/bottom_navbar.dart';
import 'package:union_bank_app_clone/ui/widgets/feature_image_button.dart';
import 'package:union_bank_app_clone/ui/widgets/main_appbar.dart';

class MoreContent extends StatelessWidget {
  static String routeName = 'MoreContent';

  const MoreContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('My Referral Code'),
                Row(
                  children: const [
                    Text(
                      'UNNOW-MXQVOREYWC',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.copy,
                      color: AppColor.textColor,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('Share this code to refer a friend!'),
                const Text(
                  'Did someone refer your?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your friends referral code',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: AppColor.primaryColor, width: 1.0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.primaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Submit', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Security',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    FeatureImageButton(image: 'assets/security/manage_devices.png', text: 'Manage Devices', onTap: () {}),
                    FeatureImageButton(image: 'assets/security/transaction_limits.png', text: 'Transaction Limits', onTap: () {}),
                    FeatureImageButton(image: 'assets/security/password_updates.png', text: 'Password Update', onTap: () {}),
                    FeatureImageButton(image: 'assets/security/security_preference.png', text: 'Security Preference', onTap: () {}),
                    FeatureImageButton(image: 'assets/security/browser_banking.png', text: 'Browser Banking', onTap: () {}),
                    FeatureImageButton(image: 'assets/security/otp_preference.png', text: 'OTP Preference', onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
