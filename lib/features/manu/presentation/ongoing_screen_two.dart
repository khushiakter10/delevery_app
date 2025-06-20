
import 'package:delevery_app/constants/text_font_style.dart';
import 'package:delevery_app/gen/colors.gen.dart';
import 'package:delevery_app/helpers/all_routes.dart';
import 'package:delevery_app/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widget/custom_ongoing_widget.dart';

class OngoingScreenTwo extends StatelessWidget {
  const OngoingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.cFFFFFF,
        body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 900.h,
                child: GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.menuScreen);
                  },
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return CustomOngoingWidget(
                          title: 'Pizza Hut',
                          titleTextSy: TextFontStyle.headline181C2Ew700text16.copyWith(fontSize: 14.sp),
                          subtitle: ' \$35.25',
                          subTextStyle: TextFontStyle.headline181C2Ew700text16.copyWith(fontSize: 14.sp,)
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        )

    );
  }
}





