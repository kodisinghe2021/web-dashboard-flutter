import 'package:flutter/material.dart';
import 'package:web_page_app/widgets/card_style_01.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CardStyleOne(),
      ),
    );
  }
}
