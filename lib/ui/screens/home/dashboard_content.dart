import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/data/mock_data.dart';
import 'package:union_bank_app_clone/ui/widgets/feature_image_button.dart';

class DashboardContent extends StatelessWidget {
  static String routeName = 'DashboardContent';

  const DashboardContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text(
                'Accounts',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'ADD / MANAGE',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Account Balance Card
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          MockData.accountNickName,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'SSS Quick Card',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          MockData.accountNumber,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Available Balance',
                          style: TextStyle(color: Colors.black54),
                        ),
                        Text(
                          'PHP ${MockData.accountBalance}',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Actions Grid
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 3,
          child: Column(
            children: [
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                //childAspectRatio: 0.75,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FeatureImageButton(image: 'assets/features/send_money.png', text: 'Send Money', onTap: () {}),
                  FeatureImageButton(image: 'assets/features/receive_money.png', text: 'Receive Money', onTap: () {}),
                  FeatureImageButton(image: 'assets/features/pay_bills.png', text: 'Pay Bills', onTap: () {}),
                  FeatureImageButton(image: 'assets/features/buy_load.png', text: 'Buy Load', onTap: () {}),
                  FeatureImageButton(image: 'assets/features/deposit_check.png', text: 'Deposit Check', onTap: () {}),
                  FeatureImageButton(image: 'assets/features/visit_branch.png', text: 'Visit Branch', onTap: () {}),
                  FeatureImageButton(image: 'assets/features/buy_sell.png', text: 'Buy/Sell USD', onTap: () {}),
                  FeatureImageButton(image: 'assets/features/activate_card.png', text: 'Activate Card', onTap: () {}),
                ],
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text('VIEW ALL', style: TextStyle(color: Colors.orange)),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text(
                'Goals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'MANAGE',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Save up for a vacation, a car or for anything else you\'ve been dreaming of.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        child: const Text('START SAVING NOW'),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Image(
                    image: AssetImage('assets/goals1.webp'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
