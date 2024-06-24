import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
Future<void> setupGetIt() async {
  getIt.registerSingleton<NavigationService>(NavigationService());
  // getIt.registerSingleton<DioService>(DioService());
}

BuildContext globalContext = getIt<NavigationService>().getContext();

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BuildContext getContext() => navigatorKey.currentState!.overlay!.context;
}
