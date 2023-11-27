import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/list_stasiun/bindings/list_stasiun_binding.dart';
import '../modules/list_stasiun/views/list_stasiun_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LIST_STASIUN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LIST_STASIUN,
      page: () => const ListStasiunView(),
      binding: ListStasiunBinding(),
    ),
  ];
}
