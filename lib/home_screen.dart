import 'package:flutter/material.dart';
import 'package:web_page_app/layouts/home_layout_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeLayoutBuilder(),
    );
  }
}
