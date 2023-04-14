import 'package:get/get.dart';
import 'package:ins_up_del_getx/screen/home/model/homemodel.dart';

class Homecontroller extends GetxController
{
  RxList<HomeModel> foodList = <HomeModel>[
    HomeModel(name: "Veggie Pizza",price: "399",img: "assets/img/veg.jpg"),
    HomeModel(name: "7 Cheese Pizza",price: "559",img: "assets/img/cheese.jpg"),
    HomeModel(name: "Margherita Pizza",price: "599",img: "assets/img/marg.jpg"),
    HomeModel(name: "Onion Garlic Pizza",price: "399",img: "assets/img/onion.jpg"),
    HomeModel(name: "Pepperoni Pizza",price: "399",img: "assets/img/pep.jpg"),
  ].obs;

  RxList<HomeModel> orderList = <HomeModel>[].obs;

}