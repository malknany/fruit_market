import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../component/const/my_color.dart';

class ItemCombo extends StatelessWidget {
  const ItemCombo(
      {Key? key,
      required this.color,
      required this.text,
      required this.price,
      required this.image})
      : super(key: key);
  final Color color;
  final String text, price, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: 152.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: kElevationToShadow[1],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                const Spacer(),
                Icon(
                  Icons.favorite_border_outlined,
                  color: MyColor.myOrange,
                )
              ],
            ),
            Expanded(
              flex: 3,
              child: Image.asset(image),
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(fontSize: 16.sp, color: MyColor.myPurPole),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Text(
                    'N $price',
                    style: TextStyle(fontSize: 14.sp, color: MyColor.myOrange),
                  ),
                  const Spacer(),
                  Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: MyColor.myOrange.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '+',
                        style:
                            TextStyle(fontSize: 20.sp, color: MyColor.myOrange),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
