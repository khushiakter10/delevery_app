// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class TextButtonWidget extends StatelessWidget {
//   final String text;
//   final TextStyle? textStyle;
//   final VoidCallback onPressed;
//   final Color? color;
//   const TextButtonWidget({
//     super.key,
//     required this.text,
//     this.textStyle, this.color, required this.onPressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 44.h,
//       width: double.infinity,
//       child: TextButton(
//           style: TextButton.styleFrom(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12.r),
//                 side:  const BorderSide(color: Colors.transparent),
//               ),
//
//               backgroundColor: color ?? Colors.red),
//               onPressed: onPressed,
//
//           child: Text(text,style: textStyle??  const TextStyle(color: Colors.black))),
//
//
//
//     );
//   }
// }



















import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final Color? color;

  const TextButtonWidget({
    super.key,
    required this.text,
    this.textStyle,
    this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side:  const BorderSide(color: Colors.transparent),
          ),
          backgroundColor: color ?? Colors.red,

          //overlayColor mane hosce button a click korle ekta onpress color astace seta remove kore overlay//
          overlayColor:  Colors.transparent
        ),
        onPressed: onPressed,
        child: Text(text, style: textStyle ??  const TextStyle(color: Colors.black)),



      ),
    );
  }
}
















