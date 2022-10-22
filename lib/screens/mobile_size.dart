import 'package:flutter/material.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FontRoboto(text: 'Mobile Screen width <- 480'),
    );
  }
}
