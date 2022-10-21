import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';

class MenuItemRow extends StatelessWidget {
  MenuItemRow({
    required this.icon,
    required this.title,
    required this.isSelected,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String title;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: isSelected ? kButton : kDisable,
        ),
        const Spacer(flex: 1),
        FontRoboto(
          text: title,
          color: isSelected ? kButton : kDisable,
          size: 17,
          weight: FontWeight.w500,
        ),
        const Spacer(flex: 6),
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              color: isSelected ? kButton : kDisable,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 1,
                  spreadRadius: .5,
                  color: isSelected ? kButton : kDisable,
                )
              ]),
        ),
      ],
    );
  }
}
