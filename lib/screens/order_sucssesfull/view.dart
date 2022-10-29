import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/const/my_color.dart';

class OrderSuccessfulScreen extends StatelessWidget {
  const OrderSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 164.w,
              height: 164.h,
              decoration: BoxDecoration(
                  color: const Color(0xffE0FFE5),
                  border:
                      Border.all(color: const Color(0xff4CD964), width: 2.w),
                  // borderRadius: BorderRadius.circular(200.r),
                  shape: BoxShape.circle),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff4CD964),
                    ),
                    child:
                        const Icon(Icons.check, color: Colors.white, size: 50),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 56.h,
            ),
            Text(
              'Congratulations!!!',
              style: TextStyle(fontSize: 32.sp, color: MyColor.myPurPole),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 64.0.w),
              child: Text('Your order have been taken and is being attended to',
                  style: TextStyle(fontSize: 20.sp, color: MyColor.myPurPole),
                  textAlign: TextAlign.center),
            ),
            SizedBox(
              height: 56.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                fixedSize: Size(133.w, 56.h),
                backgroundColor: MyColor.myOrange,
              ),
              child: const Text('Tarck order'),
            ),
            SizedBox(
              height: 48.h,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  fixedSize: Size(181.w, 56.h),
                  side: BorderSide(color: MyColor.myOrange, width: 1.w),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  )),
              child: Text(
                'Continue shopping',
                style: TextStyle(fontSize: 16.sp, color: MyColor.myOrange),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
