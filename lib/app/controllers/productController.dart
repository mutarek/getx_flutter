import 'package:get/get.dart';
import 'package:getx_flutter/app/services/remote_service.dart';

import '../moduels/productmodel.dart';

class ProductController extends GetxController{
  var productList = <Product>[].obs;


  @override
  void onInit(){
    fetchAllProducts();
    super.onInit();
  }

  void fetchAllProducts() async{
    var prodc = await RemoteService.fetchproduct();
    if(prodc !=null)
      {
        productList.value = prodc;
      }
  }

}