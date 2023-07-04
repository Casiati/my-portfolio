import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/colors.dart';

class CustomAssetBto extends StatelessWidget {
  CustomAssetBto({Key? key, required this.iconImg, this.onPressed, this.width})
      : super(key: key);

  final String iconImg;
  final VoidCallback? onPressed;
  final CustomColors customColors = CustomColors();
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          height: (width != null) ? width! * 0.03 : 50,
          width: (width != null) ? width! * 0.03 : 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: customColors.border),
          child: Padding(
            padding: EdgeInsets.all((width != null) ? width! * 0.008 : 15),
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
