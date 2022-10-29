import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/screens/home_my_basket/widget/item_combo.dart';
import 'package:fruit_hub/screens/home_my_basket/widget/search_bar.dart';
import 'package:fruit_hub/screens/home_my_basket/widget/text_bar.dart';

import '../../component/const/my_color.dart';
import 'controller.dart';

class MyBasketScreen extends StatefulWidget {
  const MyBasketScreen({Key? key}) : super(key: key);

  @override
  State<MyBasketScreen> createState() => _MyBasketScreenState();
}

class _MyBasketScreenState extends State<MyBasketScreen> {
  ComboController controller = ComboController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.drag_handle,
          color: MyColor.myPurPole,
        ),
        actions: [
          Image.asset('assets/image/mybasket.png'),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 11.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 60.w),
                  child: Text(
                    'Hello Tony,What fruit salad combo do you want today?',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: MyColor.myPurPole,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                Row(
                  children: [
                    const SearchBarWidget(),
                    SizedBox(
                      width: 16.w,
                    ),
                    Image.asset('assets/image/fillter.png'),
                    SizedBox(
                      width: 24.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'Recommended Combo',
                  style: TextStyle(fontSize: 24.sp, color: MyColor.myPurPole),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemCombo(
                      color: controller.combos[0].color,
                      text: controller.combos[0].title,
                      price: controller.combos[0].price,
                      image: controller.combos[0].image,
                    ),
                    ItemCombo(
                      color: controller.combos[1].color,
                      text: controller.combos[1].title,
                      price: controller.combos[1].price,
                      image: controller.combos[1].image,
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                const TextBarWidget(),
                SizedBox(
                  height: 24.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      controller.combos.length - 2,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: 24.w),
                        child: ItemCombo(
                          color: controller.combos[index + 2].color,
                          text: controller.combos[index + 2].title,
                          price: controller.combos[index + 2].price,
                          image: controller.combos[index + 2].image,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
