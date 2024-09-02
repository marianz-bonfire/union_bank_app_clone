import 'package:flutter/material.dart';
import 'package:union_bank_app_clone/core/common/app_color.dart';

class FeatureButton extends StatelessWidget {
  final IconData? icon;
  final String text;
  final VoidCallback onTap;
  const FeatureButton({
    super.key,
    this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              Expanded(child: Icon(icon, color: AppColor.primaryColor, size: 40),),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      Text(
                        text,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        softWrap: true,
                      ),
                    ],
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
