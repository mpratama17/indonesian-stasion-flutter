import 'package:get/get.dart';

import '../controllers/list_stasiun_controller.dart';

class ListStasiunBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListStasiunController>(
      () => ListStasiunController(),
    );
  }
}
