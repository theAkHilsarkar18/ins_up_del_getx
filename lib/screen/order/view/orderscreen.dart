import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ins_up_del_getx/screen/home/controller/homecontroller.dart';

class Orderscreen extends StatefulWidget {
  const Orderscreen({Key? key}) : super(key: key);

  @override
  State<Orderscreen> createState() => _OrderscreenState();
}
Homecontroller homecontroller = Get.put(Homecontroller());
class _OrderscreenState extends State<Orderscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Order Detail"),
          backgroundColor: Colors.green,
        ),
        body: Obx(
          () => ListView.builder(physics: BouncingScrollPhysics(),itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("${homecontroller.orderList[index].img}")),
              title: Text("${homecontroller.orderList[index].name} (1)"),
              subtitle: Text("${homecontroller.orderList[index].price}/- only",style: TextStyle(fontSize: 12)),
              trailing: InkWell(onTap: () {
                homecontroller.orderList.removeAt(index);
              },child: Icon(Icons.delete,color: Colors.green.shade700,)),
            ),
          ),itemCount: homecontroller.orderList.length,),
        ),
      ),
    );
  }
}
