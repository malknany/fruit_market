import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/const/my_color.dart';
import '../../../component/widget/item_text_formfiled.dart';

class ItemBottomSheetTow extends StatelessWidget {
  const ItemBottomSheetTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 534.h,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 48.h,
              width: 48.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(
                Icons.clear,
                color: Color(0xff070648),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.infinity,
            height: 475.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24.r),
                topLeft: Radius.circular(24.r),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        'Card Holders Name',
                        style: TextStyle(
                            fontSize: 20.sp, color: MyColor.myPurPole),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const ItemTextFormFiled(text: 'Adolphus Chris'),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        'Card Number',
                        style: TextStyle(
                            fontSize: 20.sp, color: MyColor.myPurPole),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      const ItemTextFormFiled(text: '1234 5678 9012 1314'),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date',
                                style: TextStyle(
                                    fontSize: 20.sp, color: MyColor.myPurPole),
                              ),
                              SizedBox(
                                  width: 134.w,
                                  height: 56.h,
                                  child:
                                      const ItemTextFormFiled(text: '10/30')),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CVV',
                                style: TextStyle(
                                    fontSize: 20.sp, color: MyColor.myPurPole),
                              ),
                              SizedBox(
                                  width: 134.w,
                                  height: 56.h,
                                  child: const ItemTextFormFiled(text: '123')),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 96.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: MyColor.myOrange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.r),
                      topRight: Radius.circular(24.r),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          fixedSize: Size(135.w, 56.h),
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        child: Text(
                          'Complete Order',
                          style: TextStyle(
                              fontSize: 16.sp, color: MyColor.myOrange),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
