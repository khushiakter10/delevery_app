
import 'package:delevery_app/common_widget/text_button_widget.dart';
import 'package:delevery_app/helpers/all_routes.dart';
import 'package:delevery_app/helpers/navigation_service.dart';
import 'package:delevery_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),


            Container(
              height: 13.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                border: Border.all(color: Colors.transparent),
                gradient: const LinearGradient(
                  colors: [Colors.red, Colors.blue],
                  stops: [0.5, 0.5],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            )


            //
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(66),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Container(
            //           height: 15,
            //             width: 300,
            //             color: Colors.red)),
            //       Expanded(
            //         child: Container(
            //             height: 15,
            //             width: 300,
            //             color: Colors.green,
            //         ),
            //       ),
            //     ],
            //   ),
            // )




            // Container(
            //   height: 13.h,
            //   width: 300.w,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(66),
            //     border: Border.all(color: Colors.transparent),
            //     gradient: LinearGradient(
            //       colors: [Colors.red, Colors.green],
            //       stops: [0.499, 0.5],
            //       begin: Alignment.centerLeft,
            //       end: Alignment.centerRight,
            //     ),
            //   ),
            // )

            // Container(
            //   height: 13.h,
            //   width: 300.w,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(66),
            //     border: Border.all(color: Colors.transparent),
            //   ),
            //   child: Row(
            //     children: [
            //       // বাম দিকের Red অংশ
            //       Expanded(
            //         child: Container(
            //           decoration: BoxDecoration(
            //             color: Colors.red,
            //             borderRadius: BorderRadius.only(
            //               topLeft: Radius.circular(66),
            //               bottomLeft: Radius.circular(66),
            //             ),
            //           ),
            //         ),
            //       ),
            //       // ডান দিকের Green অংশ
            //       Expanded(
            //         child: Container(
            //           decoration: BoxDecoration(
            //             color: Colors.green,
            //             borderRadius: BorderRadius.only(
            //               topRight: Radius.circular(66),
            //               bottomRight: Radius.circular(66),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),





      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 15),
        child: TextButtonWidget(text: 'khushi', onPressed: () {
          NavigationService.navigateTo(Routes.menuScreen);
        }),
      ),
    );
  }
}
