import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

/// Provides a service that can be injected into the ViewModels for navigation.
///
/// Uses the Get library for all navigation requirements
@lazySingleton
class NavigationService {
  get navigatorKey => Get.key;

  bool back() {
    Get.back();
    return Get.key.currentState.canPop();
  }

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return Get.toNamed(routeName, arguments: arguments);
  }

  Future<dynamic> replaceWith(String routeName, {dynamic arguments}) {
    return Get.offNamed(routeName, arguments: arguments);
  }
}
