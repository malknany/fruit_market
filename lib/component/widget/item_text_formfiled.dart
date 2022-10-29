import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/my_color.dart';

class ItemTextFormFiled extends StatelessWidget {
  const ItemTextFormFiled({Key? key,required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: MyColor.myDarkGray,
            fontSize: 20.sp,
          ),
          border: InputBorder.none,
          fillColor: MyColor.myGray,
          filled: true,
          contentPadding: EdgeInsets.only(left: 24.w,top: 13.h,bottom: 14.h),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none
          )
      ),
    );
  }
}
