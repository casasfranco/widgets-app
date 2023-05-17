import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget {
    static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  State<ButtonsScreen> createState() => ButtonsScreenState();
}

class ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const Placeholder(),
    );
  }
}
