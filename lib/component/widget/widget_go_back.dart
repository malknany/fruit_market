import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/my_color.dart';
class GoBackWidget extends StatelessWidget {
  const GoBackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w),
      padding: EdgeInsets.only(left: 5.w),
      width: 80.w,
      height: 32.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          Text(
            'Go back',
            style:
            TextStyle(fontSize: 16.sp, color: MyColor.myPurPole),
          ),
        ],
      ),
    );
  }
}
