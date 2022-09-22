import 'package:get/get.dart';

import 'maincomponentController.dart';

class MainComponentBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => mainComponentController());
  }
}
