import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 56.h,
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.search,
                color: Color(0xff86869E),
              ),
              hintText: 'Search for fruit salad combos',
              hintStyle: TextStyle(
                color: const Color(0xff86869E),
                fontSize: 20.sp,
              ),
              border: InputBorder.none,
              fillColor: const Color(0xffF3F4F9),
              filled: true,
              contentPadding: EdgeInsets.only(
                  left: 24.w, top: 13.h, bottom: 14.h),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide.none),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
