import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/presentation/cubits/locale/locale_cubit.dart';
import 'package:test_app/presentation/cubits/setting/setting_cubit.dart';
import 'package:test_app/presentation/cubits/setting/setting_state.dart';
import 'package:test_app/presentation/widgets/language_bottom_sheet.dart';
import 'package:test_app/presentation/widgets/tiles/setting_tile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(
      builder: (context, state) {
        return BlocConsumer<SettingCubit, SettingState>(
          listener: (context, state) {
            switch (state.settingStatus) {
              case SettingStatus.onLanguage:
                showModalBottomSheet(
                  context: globalContext,
                  builder: (context) => BlocBuilder<LocaleCubit, LocaleState>(
                    builder: (context, localeState) {
                      return LanguageBottomSheet(
                        currentLocale: localeState.locale!,
                      );
                    },
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                );

              default:
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingTiles(
                    title: l10n().language_setting_title,
                    subTitle: l10n().language_setting_decs,
                    onTap: () => context
                        .read<SettingCubit>()
                        .onTapOption(key: 'language'),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
