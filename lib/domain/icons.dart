import 'package:flutter/material.dart';

class CustomAssetImg extends StatelessWidget {
  const CustomAssetImg(this.icon, {Key? key}) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(50),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Theme.of(context).cardColor),
            child: Image.asset(
              icon,
            ),
          ),
        ),
      ],
    );
  }
}