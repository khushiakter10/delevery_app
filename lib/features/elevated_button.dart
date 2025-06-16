import 'package:delevery_app/common_widget/elevated_button.dart';
import 'package:flutter/material.dart';


class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:

        CustomElevatedButton(text: 'khisi', onPressed: () {}),

      ),
    );
  }
}



