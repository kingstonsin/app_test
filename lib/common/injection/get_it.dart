import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_app/data/local_storage/share_pref.dart';

GetIt getIt = GetIt.instance;
Future<void> setupGetIt() async {
  getIt.registerSingleton<NavigationService>(NavigationService());
  getIt.registerSingleton<SharePref>(SharePref());

  // getIt.registerSingleton<DioService>(DioService()); //TODO
}

BuildContext globalContext = getIt<NavigationService>().getContext();
l10n() => AppLocalizations.of(globalContext)!;
SharePref sharePref = getIt<SharePref>();

//// Navigation Service
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BuildContext getContext() => navigatorKey.currentState!.overlay!.context;
}
