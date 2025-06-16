import 'package:delevery_app/common_widget/myCustomTextFormfild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 50.h,horizontal: 20.w),
        child: const Column(
          children: [
            MyCustomTextFormWidget(),
          ],
        ),
      ),
    );
  }
}
