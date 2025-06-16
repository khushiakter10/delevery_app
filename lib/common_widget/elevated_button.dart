import 'package:delevery_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color? color;
  final double? height;
  final Widget? arrwicon;
  final bool showArrow;

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.color,
    this.height,
    this.showArrow = true,
    this.arrwicon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 45.h,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.r),
              //side: const BorderSide(color: Colors.grey),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text,
                  style: textStyle ??
                      TextStyle(color: Colors.white, fontSize: 14.sp)),
              if (showArrow && arrwicon != null) ...[
                UIHelper.horizontalSpace(12.w),
                arrwicon!,
              ],
            ],
          )),
    );
  }
}
