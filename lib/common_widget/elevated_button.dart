import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color? color;
  final double? height;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.color,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?? 40.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11.r),
            side: const BorderSide(color: Colors.grey),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
              ),
        ),
      ),
    );
  }
}
