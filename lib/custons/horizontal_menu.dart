import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/colors.dart';
import 'package:my_portfolio/custons/menu_btutton.dart';
import 'package:my_portfolio/domain/page_controller.dart';
import 'package:provider/provider.dart';

class HorizontalMenu extends StatelessWidget {
  HorizontalMenu({super.key, required this.pages, required this.width});
  final List pages;
  final CustomColors customColors = CustomColors();
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Consumer<PageProvider>(
            builder: (context, pageProvider, child) {
              return Container(
                decoration: BoxDecoration(
                    gradient: gradient,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    menuButton(pageProvider, 0, 'Nubank Clone', width),
                    menuButton(pageProvider, 1, 'Projeto 2', width),
                    menuButton(pageProvider, 2, 'Projeto 3', width),
                  ],
                ),
              );
            },
          ),
        ),
        Consumer<PageProvider>(
            builder: (context, pageProvider, child) =>
                pages[pageProvider.selectedPage])
      ],
    );
  }
}