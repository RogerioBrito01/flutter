import 'package:get/get.dart';

import 'initial_controler.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    // inicializa o controler quando for necessario
    Get.lazyPut<InitialController>(() => InitialController());
  }
}
