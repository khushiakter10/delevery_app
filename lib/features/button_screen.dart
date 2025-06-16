import 'package:delevery_app/common_widget/my_personal_button.dart';
import 'package:flutter/material.dart';


class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Spacer(),
            CustomButton(text: 'Ahona',color: Colors.blue),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
