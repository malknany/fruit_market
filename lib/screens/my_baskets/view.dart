import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/screens/home_my_basket/controller.dart';
import 'package:fruit_hub/screens/my_baskets/widget/item_bottom_sheet.dart';

import '../../component/const/my_color.dart';
import '../../component/widget/widget_go_back.dart';

class DeliveryScreen extends StatelessWidget {
  DeliveryScreen({Key? key}) : super(key: key);
  ComboController controller = ComboController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: MyColor.myOrange,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const GoBackWidget(),
                        SizedBox(
                          width: 34.w,
                        ),
                        Text(
                          'My Basket',
                          style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: List.generate(
                      controller.combos.length - 2,
                      (index) => ListTile(
                        leading: Container(
                          height: 64.h,
                          width: 64.w,
                          decoration: BoxDecoration(
                            color: controller.combos[index + 2].color,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: SizedBox(
                            width: 40.w,
                            height: 40.h,
                            child: Image.asset(
                              controller.combos[index].image,
                            ),
                          ),
                        ),
                        title: Text(
                          controller.combos[index + 2].title,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(controller.combos[index + 2].pack),
                        trailing: Text(
                          'N ${controller.combos[index + 2].price}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
                        textColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Toyal',
                          style:
                              TextStyle(color: Colors.black, fontSize: 16.sp),
                        ),
                        Text(
                          'N 60,000',
                          style:
                              TextStyle(fontSize: 24.sp, color: Colors.black),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.white12.withOpacity(0.005),
                          context: context,
                          builder: (context) => const ItemBottomSheet(),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(199.w, 56.h),
                        backgroundColor: MyColor.myOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      child: const Text('Checkout'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 56.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
