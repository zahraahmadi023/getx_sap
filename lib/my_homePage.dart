import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sap/Controller/tap_controller.dart';
import 'package:getx_sap/SecoundPage.dart';
import 'package:getx_sap/first_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller=Get.put(TapController());
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GetBuilder<TapController>(builder: (TapController){
              return  Container(
                decoration: BoxDecoration(
                  color: Color(0XFF89dad9),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 100,
                
                child: Center(child: Text(TapController.x.toString(), style:TextStyle(color: Colors.white,fontSize: 20),)),
              );
            }),
            GestureDetector(
              onTap: (){
                controller.increasX();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0XFF89dad0),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 100,
                
                child: Center(child: Text("tap +", style:TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=>FirstPage());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0XFF89dad9),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 100,
                
                child: Center(child: Text("go to first page", style:TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
            GestureDetector(
              onTap: (){
                  Get.to(()=>SecoundPage());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0XFF89dad9),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 100,
                
                child: Center(child: Text("secound page", style:TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.TotalXY();
              
                
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0XFF89dad9),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 100,
              
                child: Center(child: Text(" Tap Total xy", style:TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            ),
            
          ],
        ),
      ),
      
    );
  }
}