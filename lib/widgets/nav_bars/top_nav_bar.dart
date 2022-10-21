import 'package:flutter/material.dart';

AppBar topNavBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      title: const Text('Top Navigation Bar'),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          key.currentState?.openDrawer();
        },
        icon: const Icon(Icons.menu),
      ),
    );
