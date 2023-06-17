import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sap/Controller/tap_controller.dart';

class ThtridPage extends StatelessWidget {
  const ThtridPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller=Get.find();
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
          
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
      ),
      body: Container(
        // width: double.infinity,
        // height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Obx(() =>
            Column(
              children:[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF89dad9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: double.infinity,
                  height: 100,
                  
                  child: Center(child: Text("value y ${controller.y.value.toString()}",
                  style:TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF89dad9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: double.infinity,
                  height: 100,
                  
                  child: Center(child: Text("total xy ${controller.z.value.toString()}",
                  style:TextStyle(color: Colors.white,fontSize: 20),)),
                ),
                ]
            ),
            ),

            GetBuilder<TapController>(builder: (_){
              return Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF89dad9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: double.infinity,
                  height: 100,
                  
                  child: Center(child: Text(" value x ${controller.x.toString()}",
                  style:TextStyle(color: Colors.white,fontSize: 20),)),
                );

            }),
            
                GestureDetector(
              onTap: () {
                controller.increasY();
                
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0XFF89dad9),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 100,
              
                child: Center(child: Text("increas y", style:TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
          ]
        ),
      ),
    );
  }
}