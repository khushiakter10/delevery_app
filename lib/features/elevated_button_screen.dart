import 'package:delevery_app/common_widget/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ElevatedScreen extends StatefulWidget {
  const ElevatedScreen({super.key});

  @override
  State<ElevatedScreen> createState() => _ElevatedScreenState();
}

class _ElevatedScreenState extends State<ElevatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [

          ],
        ),
      ),
     bottomNavigationBar:Padding(
       padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),

       child: CustomElevatedButton(text: 'Ahona', onPressed: () {},textStyle: const TextStyle(color: Colors.black))
     ),
    );
  }
}



