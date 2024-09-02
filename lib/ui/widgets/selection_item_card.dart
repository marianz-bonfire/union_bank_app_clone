import 'package:flutter/material.dart';

class SelectionItemCard extends StatelessWidget {
  final IconData? icon;
  final IconData? iconRight;
  final String text;
  final VoidCallback onTap;
  const SelectionItemCard({
    super.key,
    this.icon,
    this.iconRight,
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (icon != null) ...[
                    Icon(icon, size: 28, color: Colors.orange),
                    const SizedBox(width: 16),
                  ],
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  if (iconRight != null) ...[
                    const SizedBox(width: 16),
                    Icon(iconRight, color: Colors.orange),
                  ]
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
