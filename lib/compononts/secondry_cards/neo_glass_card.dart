import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:web_page_app/constance.dart';
import 'package:web_page_app/widgets/buttons/roundad_button.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';

class NeoGlassCard extends StatelessWidget {
  const NeoGlassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
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
        children: const [
          FittedBox(
            child: FontRoboto(
              text: 'Add \nNew File',
              size: 20,
              weight: FontWeight.w500,
            ),
          ),
          RoundadButton(),
        ],
      ),
    );
  }
}
