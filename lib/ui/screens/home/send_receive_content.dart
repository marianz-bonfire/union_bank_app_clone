import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/ui/widgets/selection_item_card.dart';

class SendReceiveContent extends StatelessWidget {
  static String routeName = 'SendReceiveContent';

  const SendReceiveContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectionItemCard(
          text: 'Another UnionBank Account',
          iconRight: Icons.arrow_forward_ios_outlined,
          onTap: () {},
        ),
        SelectionItemCard(
          text: 'EON Account',
          iconRight: Icons.arrow_forward_ios_outlined,
          onTap: () {},
        ),
        SelectionItemCard(
          text: 'Other Banks & E-Wallets',
          iconRight: Icons.arrow_forward_ios_outlined,
          onTap: () {},
        ),
        SelectionItemCard(
          text: 'Remittance Center',
          iconRight: Icons.arrow_forward_ios_outlined,
          onTap: () {},
        ),
        SelectionItemCard(
          text: 'International',
          iconRight: Icons.arrow_forward_ios_outlined,
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.orange, // border color
                  shape: BoxShape.circle,
                ),
                child: Container(),
              ),
              const SizedBox(width: 8),
              const Text(
                'MANAGE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SelectionItemCard(
          text: 'Manage Transfers',
          iconRight: Icons.arrow_forward_ios_outlined,
          onTap: () {},
        ),
        SelectionItemCard(
          text: 'Manage PayDirect',
          iconRight: Icons.arrow_forward_ios_outlined,
          onTap: () {},
        ),
        SelectionItemCard(
          text: 'Manage Recipients',
          iconRight: Icons.arrow_forward_ios_outlined,
          onTap: () {},
        ),
        SelectionItemCard(
          text: 'Manage Scheduled Transfers',
          iconRight: Icons.arrow_forward_ios_outlined,
          onTap: () {},
        ),
      ],
    );
  }
}
