import 'package:flutter/material.dart';

import 'colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      required this.icon,
      required this.onTap,
      this.width});

  final CustomColors customColors = CustomColors();
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        decoration: BoxDecoration(gradient: gradient),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(24),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (width != null) ? width! * 0.023 : 69,
                  vertical: (width != null) ? width! * 0.008 : 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: customColors.font,
                        fontSize: (width != null) ? width! * 0.012 : 20,
                      ),
                    ),
                    SizedBox(
                      width: (width != null) ? width! * 0.008 : 19,
                    ),
                    Icon(
                      icon,
                      color: customColors.font,
                      size: (width != null) ? width! * 0.013 : 24,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
