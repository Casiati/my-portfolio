import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/colors.dart';

class CustomAssetBto extends StatelessWidget {
  CustomAssetBto({Key? key, required this.iconImg, this.onPressed})
      : super(key: key);

  final String iconImg;
  final VoidCallback? onPressed;
  final CustomColors customColors = CustomColors();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: customColors.border),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              fit: BoxFit.cover,
              iconImg,
            ),
          ),
        ),
      ),
    );
  }
}
