import 'package:flutter/material.dart';
import 'package:tripetrol_application_1/menu/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tripetrol"),
      ),
      body: ListView(
        children: [
          ...menuOptions.map((e) => MenuTile(
                menuOption: e,
              ))
        ],
      ),
    );
  }
}
