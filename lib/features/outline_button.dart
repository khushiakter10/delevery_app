import 'package:delevery_app/common_widget/outline_button.dart';
import 'package:flutter/material.dart';

class OutlineScreen extends StatefulWidget {
  const OutlineScreen({super.key});

  @override
  State<OutlineScreen> createState() => _OutlineScreenState();
}

class _OutlineScreenState extends State<OutlineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child:

          OutlineButton(text: 'Ahona',color: Colors.blue, voidCallback: () {}),

        ),
      ),
    );
  }
}


