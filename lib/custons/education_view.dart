import 'package:flutter/material.dart';

class EducationView extends StatelessWidget {
  const EducationView({super.key, required this.text1, required this.text2});

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    final width = deviceInfo.size.width * 0.6;
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text1),
          const SizedBox(
            width: 15,
          ),
          SizedBox(width: width,
            child: Text(
              text2,
              maxLines: 3,            
              overflow: TextOverflow.visible,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
