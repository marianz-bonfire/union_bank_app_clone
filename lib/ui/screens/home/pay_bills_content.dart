import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/ui/widgets/selection_item_card.dart';

class PayBillsContent extends StatelessWidget {
  static String routeName = 'PayBillsContent';

  const PayBillsContent({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectionItemCard(
          text: 'Select Biller',
          icon: Icons.water_drop_sharp,
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
        
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: [
                        const Image(
                          image: AssetImage('assets/assorted/billers.png'),
                          width: 50, height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            children: const [
                              Text(
                                'My Billers',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: [
                        const Image(
                          image: AssetImage('assets/assorted/scheduled_payments.png'),
                          width: 50, height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            children: const [
                              Text(
                                'My Billers',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
        
         
      ],
    );
  }
}
