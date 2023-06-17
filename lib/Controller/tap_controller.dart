import 'package:get/get.dart';

class TapController extends GetxController{
  int _x=0;
  RxInt _z=0.obs;
  int get x=>_x;

  void increasX(){
    _x++;
    update();
    print(_x);
  }
  void uncreasX(){
    _x--;
    update();
    print(_x);
  }
  RxInt get z=>_z;
  void TotalXY(){
    _z.value= _x+_y.value;
    print(_z);
  }


  RxInt _y = 0.obs;

  RxInt get y=>_y;
  void increasY(){
    _y.value++;
    
    
  }
  void uncreasY(){
    _y.value--;
    
    print(_y);
  }
}

