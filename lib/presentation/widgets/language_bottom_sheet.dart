// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_app/common/constant/image_constant.dart';
import 'package:test_app/common/enums/locale_enum.dart';
import 'package:test_app/presentation/cubits/locale/locale_cubit.dart';
import 'package:test_app/presentation/widgets/custom_image_widget.dart';

class LanguageBottomSheet extends StatefulWidget {
  LanguageBottomSheet({super.key, required this.currentLocale});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
  AppLocale currentLocale;
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () async {
                      await context
                          .read<LocaleCubit>()
                          .onChangeLocale(AppLocale.values[index]);
                      context.pop();
                    },
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppLocale.values[index].title,
                              ),
                              if (widget.currentLocale ==
                                  AppLocale.values[index])
                                CustomImageView(
                                  imagePath: ImageConstant.tick,
                                  height: 24,
                                  width: 24,
                                ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              );
            },
            itemCount: AppLocale.values.length,
          ),
        ],
      ),
    );
  }
}
