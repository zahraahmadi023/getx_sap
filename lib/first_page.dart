import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sap/Controller/tap_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller=Get.find();
    return Scaffold(
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
            GetBuilder<TapController>(builder: (_){
              return Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF89dad9),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: double.infinity,
                  height: 100,
                  
                  child: Center(child: Text(controller.x.toString(), style:TextStyle(color: Colors.white,fontSize: 20),)),
                );

            }),
            
                GestureDetector(
              onTap: () {
                controller.uncreasX();
                
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0XFF89dad9),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 100,
              
                child: Center(child: Text("tap-", style:TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
          ]
        ),
      ),
    );
  }
}