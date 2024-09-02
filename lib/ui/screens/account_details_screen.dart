import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/core/common/app_color.dart';
import 'package:union_bank_app_clone/core/utils/navigator_context.dart';
import 'package:union_bank_app_clone/data/mock_data.dart';
import 'package:union_bank_app_clone/ui/widgets/dash_separator.dart';
import 'package:union_bank_app_clone/ui/widgets/feature_button.dart';
import 'package:union_bank_app_clone/ui/widgets/feature_image_button.dart';
import 'package:union_bank_app_clone/ui/widgets/main_appbar.dart';
import 'package:union_bank_app_clone/ui/widgets/transaction_item.dart';

class AccountDetailsScreen extends StatelessWidget {
  static String routeName = 'AccountDetailsScreen';
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            NavigatorContext.back();
          },
          color: AppColor.textColor,
        ),
        backgroundColor: AppColor.backgroundColor,
      ),
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Account Details',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.money,
                            size: 30,
                          ),
                          SizedBox(width: 10),
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
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'Available Balance',
                                style: TextStyle(color: Colors.black54),
                              ),
                              Text(
                                'PHP ${MockData.accountBalance}',
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 1,
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: AssetImage('assets/features/activate_card.png'),
                              height: 30,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Card Settings',
                                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            Icon(Icons.arrow_forward_ios_outlined, color: Colors.orange),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 0,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name'),
                        Text(
                          'Marianz Gates',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('Current Balance'),
                        Text(
                          'PHP ${MockData.accountBalance}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text('Fund Clearing'),
                        Text(
                          'PHP 0.00',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recent Transactions',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 0,
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('OFF-US INSTAPAY'),
                                Text('August 20, 2024', style: TextStyle(fontSize: 10, color: Colors.grey))
                              ],
                            ),
                            Text(
                              'PHP 2,000.00',
                            )
                          ],
                        ),
                        DashSeparator(),
                        TransactionItem(
                          text: 'OFF-US INSTAPAY',
                          date: 'August 16, 2024',
                          amount: 'PHP 2,000.00',
                          onTap: () {},
                        ),
                        DashSeparator(),
                        TransactionItem(
                          text: 'OFF-US INSTAPAY',
                          date: 'August 2, 2024',
                          amount: 'PHP 2,000.00',
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
