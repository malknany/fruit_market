import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/screens/my_baskets/widget/item_bottom_sheet_tow.dart';

import '../../../component/const/my_color.dart';
import '../../../component/widget/item_text_formfiled.dart';

class ItemBottomSheet extends StatelessWidget {
  const ItemBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 488.h,
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
            height: 16.h,
          ),
          Container(
            width: double.infinity,
            height: 420.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24.r),
                topLeft: Radius.circular(24.r),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    'Delivery address',
                    style: TextStyle(fontSize: 20.sp, color: MyColor.myPurPole),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const ItemTextFormFiled(
                      text: '10th avenue, Lekki, Lagos State'),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Number we can call',
                    style: TextStyle(fontSize: 20.sp, color: MyColor.myPurPole),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const ItemTextFormFiled(text: '09090605708'),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            fixedSize: Size(125.w, 56.h),
                            side: BorderSide(color: MyColor.myOrange)),
                        child: Text(
                          'Pay on delivery',
                          style: TextStyle(
                              fontSize: 16.sp, color: MyColor.myOrange),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.white12.withOpacity(0.005),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => const ItemBottomSheetTow(),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            fixedSize: Size(125.w, 56.h),
                            side: BorderSide(color: MyColor.myOrange)),
                        child: Text(
                          'Pay with card',
                          style: TextStyle(
                              fontSize: 16.sp, color: MyColor.myOrange),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
