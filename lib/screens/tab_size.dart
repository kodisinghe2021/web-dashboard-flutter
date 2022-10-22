import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/columns/middle_column.dart';
import 'package:web_page_app/compononts/columns/right_side_coloumn.dart';
import 'package:web_page_app/constant.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: getScreenSize(context).width,
        height: getScreenSize(context).height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const MiddleColumn(),
              verticalMinBox(context),
              const RightSideColumn(),
            ],
          ),
        ),
      ),
    );
  }
}
