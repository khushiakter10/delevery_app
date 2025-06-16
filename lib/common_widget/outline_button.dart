

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color? color;
  final VoidCallback onPressed;

  const OutlineButton({
    super.key,
    required this.text,
    this.textStyle,
    this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45.h,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: color ?? Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ?? const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
