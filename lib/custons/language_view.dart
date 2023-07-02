import 'package:flutter/material.dart';

class LanguageView extends StatelessWidget {
   const LanguageView({super.key, required this.img, required this.text});
   
   final String text;
   final String img;

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    final width = deviceInfo.size.width * 0.5;
    return Center(
      child: Container(alignment: Alignment.topLeft, width: width,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(img, height: 25),
            const SizedBox(
              width: 8,
            ),
            Text(text ,style: const TextStyle(color: Colors.grey, fontSize: 18),)
          ],
        ),
      ),
    );
  }
}
