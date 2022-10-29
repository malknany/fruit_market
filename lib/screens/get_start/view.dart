import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/const/my_color.dart';
import '../../component/widget/item_text_formfiled.dart';

class GetStartScreen extends StatefulWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
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
                child: Image.asset('assets/image/kisspng.png'),
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
                      'What is your firstname?',
                      style:
                          TextStyle(fontSize: 20.sp, color: MyColor.myPurPole),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const ItemTextFormFiled(text: 'Tony'),
                    SizedBox(
                      height: 42.h,
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
                      child: const Text('Start Ordering'),
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
