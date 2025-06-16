import 'package:delevery_app/common_widget/text_button_widget.dart';
import 'package:flutter/material.dart';


class TextButScreen extends StatefulWidget {
  const TextButScreen({super.key});

  @override
  State<TextButScreen> createState() => _TextButScreenState();
}

class _TextButScreenState extends State<TextButScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(

      child: TextButtonWidget(text: 'khushi',onPressed: (){},),

    ));
  }
}


