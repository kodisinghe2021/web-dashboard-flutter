import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/secondry_cards/menu_item_row.dart';
import 'package:web_page_app/constant.dart';

class MenuListColumn extends StatelessWidget {
  const MenuListColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        MenuItemRow(
          icon: Icons.dashboard,
          title: 'Dashboard',
          isSelected: true,
        ),
        verticalMinBox(context),
        MenuItemRow(
          icon: Icons.folder_open,
          title: 'My Folder',
          isSelected: false,
        ),
        verticalMinBox(context),
        MenuItemRow(
          icon: Icons.settings,
          title: 'Settings',
          isSelected: false,
        ),
        const Spacer(),
      ],
    );
  }
}
