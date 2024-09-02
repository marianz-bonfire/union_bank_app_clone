import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/core/common/app_color.dart';
import 'package:union_bank_app_clone/data/models/telco.dart';

class TelcoCard extends StatelessWidget {
  final Telco telco;
  final VoidCallback onTap;
  const TelcoCard({
    super.key,
    required this.telco,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(telco.image),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                flex: 1,
                child: Text(
                  telco.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
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
