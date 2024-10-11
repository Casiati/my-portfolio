import 'package:flutter/material.dart';
import 'package:my_portfolio/domain/page_controller.dart';

Widget menuButton(
    PageProvider pageProvider, int page, String title, double width) {
  bool isSelected = pageProvider.selectedPage == page;

  return Row(
    children: [
      isSelected
          ? const Icon(
              Icons.arrow_right_outlined,
              color: Colors.white,
            )
          : Container(),
      const SizedBox(
        width: 5,
      ),
      Container(
        decoration: isSelected ? const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.white),
          ),
        ) : null ,
        child: TextButton(
          onPressed: () {
            pageProvider.changePage(page);
          },
          style: TextButton.styleFrom(),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: isSelected ? width * 0.015 : width * 0.012,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    ],
  );
}
