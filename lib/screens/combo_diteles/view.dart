import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../component/const/my_color.dart';
import '../../component/widget/widget_go_back.dart';
import '../home_my_basket/controller.dart';

class ComboDetails extends StatefulWidget {
  const ComboDetails({Key? key}) : super(key: key);

  @override
  State<ComboDetails> createState() => _ComboDetailsState();
}

class _ComboDetailsState extends State<ComboDetails> {
  final ComboController controller = ComboController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.myOrange,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GoBackWidget(),
              SizedBox(
                height: 10.h,
              ),
              Center(child: Image.asset('assets/image/breakfast.png')),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 24.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Text(
                        'Quinoa Fruit Salad',
                        style: TextStyle(
                            fontSize: 32.sp, color: MyColor.myPurPole),
                      ),
                      SizedBox(
                        height: 33.h,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                controller.count--;
                              });
                            },
                            child: Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.black, width: 1.5),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Text(
                            '$controller.count',
                            style:
                                TextStyle(fontSize: 16.sp, color: Colors.black),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                controller.count++;
                              });
                            },
                            child: Container(
                              height: 24.h,
                              width: 24.w,
                              decoration: BoxDecoration(
                                color: MyColor.myOrange.withOpacity(0.2),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: MyColor.myOrange,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'N ${controller.combos[2].price}',
                            style: TextStyle(
                                fontSize: 24.sp, color: MyColor.myPurPole),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Divider(
                          color: Color(0xffF3F3F3), height: 2, thickness: 2),
                      SizedBox(
                        height: 33.h,
                      ),
                      Text(
                        'One Pack Contains:',
                        style: TextStyle(
                            fontSize: 20.sp, color: MyColor.myPurPole),
                      ),
                      Divider(
                        color: MyColor.myOrange,
                        thickness: 2,
                        endIndent: 183.w,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 24.0.w),
                        child: Text(
                          'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                          style: TextStyle(
                              fontSize: 16.sp, color: MyColor.myPurPole),
                        ),
                      ),
                      SizedBox(
                        height: 44.h,
                      ),
                      const Divider(
                          color: Color(0xffF3F3F3), height: 2, thickness: 2),
                      SizedBox(
                        height: 24.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 61.w),
                        child: Text(
                          'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 39.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 48.h,
                            width: 48.w,
                            decoration: BoxDecoration(
                              color: MyColor.myOrange.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: Icon(
                              Icons.favorite_border_outlined,
                              color: MyColor.myOrange,
                            )),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 24.0.w),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                backgroundColor: MyColor.myOrange,
                                fixedSize: Size(219.w, 56.h),
                              ),
                              child: Text(
                                'Add to basket',
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
