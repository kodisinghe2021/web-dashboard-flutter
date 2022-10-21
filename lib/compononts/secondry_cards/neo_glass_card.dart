import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/constant_fonts.dart';
import 'package:web_page_app/widgets/buttons/roundad_button.dart';

class NeoGlassCard extends StatelessWidget {
  const NeoGlassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhite,
                Color.fromARGB(0, 255, 255, 255),
              ]),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rightSideCardHeading('Add \nNew File'),
          const RoundadButton(),
        ],
      ),
    );
  }
}
