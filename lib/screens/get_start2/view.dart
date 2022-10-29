import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/const/my_color.dart';

class GetStart2Screen extends StatelessWidget {
  const GetStart2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: MyColor.myOrange,
                child: Image.asset('assets/image/getstart.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 56.h, bottom: 88.h, left: 24.w, right: 23.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get The Freshest Fruit Salad Combo',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: MyColor.myPurPole,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
                      style: TextStyle(
                          fontSize: 16.sp, color: const Color(0xff5D577E)),
                    ),
                    SizedBox(
                      height: 58.h,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        backgroundColor: MyColor.myOrange,
                        fixedSize: Size(327.w, 56.h),
                        alignment: Alignment.center,
                      ),
                      child: Text(
                        'Let’s Continue',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
