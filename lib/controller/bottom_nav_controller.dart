import 'package:get/get.dart';

class BottomNavController extends GetxController{

  //Rxint
  var selectedIndex = 0.obs; //this variable is reactive because of obs - use when we want to change the index

  void onTapped(int index) {

      selectedIndex.value = index;
  }

}
