import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ins_up_del_getx/screen/home/view/homescreen.dart';
import 'package:ins_up_del_getx/screen/order/view/orderscreen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Homescreen(),
        'order' : (context) => Orderscreen(),
      },
    ),
  );
}