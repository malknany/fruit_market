import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/screens/combo_diteles/view.dart';
import 'package:fruit_hub/screens/get_start/view.dart';
import 'package:fruit_hub/screens/get_start2/view.dart';
import 'package:fruit_hub/screens/my_baskets/view.dart';
import 'package:fruit_hub/screens/order_sucssesfull/view.dart';
import 'package:fruit_hub/screens/splash/view.dart';
import 'screens/home_my_basket/view.dart';

void main() {
  runApp(
    ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        theme: ThemeData(fontFamily: 'Abel'),
        title: 'Fruit Hub',
        debugShowCheckedModeBanner: false,
        home: child,
      ),
      child: PageView(
        children: [
          const SplashScreen(),
          const GetStart2Screen(),
          const GetStartScreen(),
          const MyBasketScreen(),
          const ComboDetails(),
          DeliveryScreen(),
          const OrderSuccessfulScreen(),
        ],
      ),
    ),
  );
}
