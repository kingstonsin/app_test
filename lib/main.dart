import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_app/common/enums/locale_enum.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/common/routes/go_router_config.dart';
import 'package:test_app/data/local_storage/share_pref.dart';
import 'package:test_app/main.dart';
import 'package:test_app/presentation/cubits/locale/locale_cubit.dart';
import 'package:test_app/theme/theme_helper.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharePref().init();

  setupGetIt();
  EasyLoading.instance.userInteractions = false;

  dioService.initializeDio();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    runApp(const MyApp());
    // Splash screen.... force update .... etc.
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocaleCubit(),
      child: BlocConsumer<LocaleCubit, LocaleState>(
        listener: (BuildContext context, LocaleState state) {
          if (state is LoadingState) {
            EasyLoading.show();
          } else {
            EasyLoading.dismiss();
          }
        },
        builder: (context, localeState) {
          return MaterialApp.router(
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.noScaling),
                child: FlutterEasyLoading(
                    child: SafeArea(
                  top: false,
                  bottom: false,
                  child: child ?? const SizedBox.shrink(),
                )),
              );
            },
            routerConfig: goRouterConfig,
            locale: localeState.locale!.getLocale,
            theme: theme,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const <Locale>[
              Locale('en'),
              Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
              Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
            ],
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
