import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/const/my_color.dart';
class TextBarWidget extends StatelessWidget {
  const TextBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Hottest',
          style: TextStyle(
            fontSize: 24.sp,
            color: MyColor.myPurPole,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed,
            decorationColor: MyColor.myOrange,
          ),
        ),
        Text(
          'Popular',
          style: TextStyle(
              fontSize: 16.sp, color: const Color(0xff938DB5)),
        ),
        Text(
          'New combo',
          style: TextStyle(
              fontSize: 16.sp, color: const Color(0xff938DB5)),
        ),
        Text(
          'Top',
          style: TextStyle(
            fontSize: 16.sp,
            color: const Color(0xff938DB5),
          ),
        ),
      ],
    );
  }
}
