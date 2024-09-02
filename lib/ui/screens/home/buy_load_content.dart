import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/core/common/app_color.dart';
import 'package:union_bank_app_clone/data/mock_telco_list.dart';
import 'package:union_bank_app_clone/ui/widgets/telco_card.dart';

class BuyLoadContent extends StatelessWidget {
  static String routeName = 'BuyLoadContent';

  const BuyLoadContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Which telco are you purchasing from?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          children: Telcos.list.map((telco) {
            return TelcoCard(telco: telco, onTap: () {});
          }).toList(),
        ),
        SizedBox(height: 30),
        const Text(
          'Recent Purchases',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        const Align(
          alignment: Alignment.center,
          child: Text(

            'No purchase found',
            style: TextStyle(color: AppColor.textColor),
          ),
        ),

      ],
    );
  }
}
