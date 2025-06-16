
import 'package:delevery_app/gen/colors.gen.dart';
import 'package:delevery_app/helpers/all_routes.dart';
import 'package:delevery_app/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'gen/assets.gen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body:  GestureDetector(
        onTap: (){
          NavigationService.navigateTo(Routes.onboardScreen);
        },
        child: Center(
          child: Image.asset(Assets.images.food.path,height: 50.h,)
        ),
      )
    );
  }
}




























//
//
//
//
//
//
//
//
//
// import 'dart:math';
// import 'package:delevery_app/constants/text_font_style.dart';
// import 'package:delevery_app/gen/assets.gen.dart';
// import 'package:delevery_app/gen/colors.gen.dart';
// import 'package:delevery_app/helpers/all_routes.dart';
// import 'package:delevery_app/helpers/navigation_service.dart';
// import 'package:delevery_app/helpers/ui_helpers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class CallingScreen extends StatefulWidget {
//   const CallingScreen({super.key});
//
//   @override
//   State<CallingScreen> createState() => _CallingScreenState();
// }
//
// class _CallingScreenState extends State<CallingScreen> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1000),
//     )..repeat(reverse: true);
//
//     _animation = Tween<double>(begin: 1.0, end: 1.3).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeInOut,
//     ));
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.c4C6176,
//       body: Stack(
//         children: [
//           Positioned(
//             bottom: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               width: double.infinity,
//               padding: EdgeInsets.symmetric(vertical: 60.h),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 10.r,
//                     spreadRadius: 2.r,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   AnimatedBuilder(
//                     animation: _animation,
//                     builder: (context, child) {
//                       return Transform.scale(
//                         scale: _animation.value,
//                         child: CircleAvatar(
//                           radius: 40.r,
//                           backgroundImage: AssetImage(Assets.images.profile.path),
//                         ),
//                       );
//                     },
//                   ),
//                   UIHelper.verticalSpace(12.h),
//                   Text("Khusbu",
//                       style: TextFontStyle.headline181C2Ew700text16.copyWith(fontSize: 20.sp)),
//                   UIHelper.verticalSpace(4.h),
//                   Text("Talking...",
//                       style: TextFontStyle.headline979797w400text16),
//                   UIHelper.verticalSpace(24.h),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.mic_off, color: Colors.black54),
//                         iconSize: 30.sp,
//                         onPressed: () {},
//                       ),
//                       Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
//                             decoration: const BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: AppColors.cFF3434,
//                             ),
//                             child: IconButton(
//                               icon: const Icon(Icons.call_end, color: Colors.white),
//                               onPressed: () {
//                                 NavigationService.navigateTo(Routes.masterCardScreen);
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                         icon: const Icon(Icons.volume_up, color: Colors.black54),
//                         iconSize: 30.sp,
//                         onPressed: () {},
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
