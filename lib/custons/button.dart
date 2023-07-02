import 'package:flutter/material.dart';

import 'colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.text, required this.icon, required this.onTap});

  final CustomColors customColors = CustomColors();
  final String text;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(borderRadius: BorderRadius.circular(24),
      child: Container(decoration: BoxDecoration(gradient: gradient),
        child: Material(color: Colors.transparent,
          child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(24),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 69, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      text,
                      style: TextStyle(color: customColors.font, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 19,
                    ),
                    Icon(icon, color: customColors.font, size: 24),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
