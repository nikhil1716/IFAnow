import 'package:get/get.dart';

import '../UI/maincomponent.dart';
import '../UI/maincomponent_binding.dart';
import 'appRoutes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.maincomponent,
      page: () => const Maincomponent(),
      binding: MainComponentBinding(),
      transition: Transition.rightToLeft,
      // curve: cubic,
    ),
  ];
}
