import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ins_up_del_getx/screen/home/controller/homecontroller.dart';
import 'package:ins_up_del_getx/screen/home/model/homemodel.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Homecontroller homecontroller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu,color: Colors.white),
          title: Text("Pizza Eldorado"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(onTap: () {
                Get.toNamed('order');
              },child: Icon(Icons.fastfood,color: Colors.white,)),
            ),
          ],
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "${homecontroller.foodList[index].img}",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${homecontroller.foodList[index].name}",style: TextStyle(color: Colors.green.shade700,fontWeight: FontWeight.w500,fontSize: 18)),
                          SizedBox(height: 5,),
                          Text("${homecontroller.foodList[index].price}/- only",style: TextStyle(color: Colors.green.shade700,fontWeight: FontWeight.w500,fontSize: 15)),

                        ],
                      ),
                      Spacer(),
                      InkWell(onTap: () {
                        //HomeModel h1 = HomeModel(img: homecontroller.foodList[index].img,price: homecontroller.foodList[index].price,name: homecontroller.foodList[index].img);
                        homecontroller.orderList.add(homecontroller.foodList[index]);
                      },child: Icon(Icons.fastfood,color: Colors.green.shade700,)),
                    ],
                  ),
                ),

              ],
            ),
          ),
          itemCount: homecontroller.foodList.length,
        ),
      ),
    );
  }
}
