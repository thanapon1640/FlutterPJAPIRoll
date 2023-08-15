import 'package:get/get.dart';
import 'package:projectapi/service/api_service.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
   // Get.put(AppController());
    Get.put(ApiService());
  }
  
}