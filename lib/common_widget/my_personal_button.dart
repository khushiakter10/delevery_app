import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? height;
  final Color? color;
  final TextStyle? textStyle;
  const CustomButton({
    super.key,
    required this.text,
    this.height,
    this.color,
    this.textStyle, required this.onPressed,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color ?? Colors.grey,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
            child: Text(
          text,
        )),
      ),
    );
  }
}
