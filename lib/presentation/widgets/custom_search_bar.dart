import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/common/constant/image_constant.dart';
import 'package:test_app/presentation/widgets/custom_image_widget.dart';
import 'package:test_app/theme/theme_helper.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
    required this.controller,
    this.placeholder,
    this.lengthLimit,
    this.textAlign = TextAlign.left,
    this.textStyle,
    required this.onChanged,
    this.onEditingComplete,
    this.textInputFormatter,
  });

  final TextEditingController controller;

  final String? placeholder;

  final int? lengthLimit;

  final TextAlign textAlign;

  final TextStyle? textStyle;

  final Function(String) onChanged;

  final Function()? onEditingComplete;

  final List<TextInputFormatter>? textInputFormatter;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  bool obscureText = false;
  bool isEditting = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: appTheme.accentColor),
      ),
      child: TextField(
        inputFormatters: widget.textInputFormatter ?? [],
        controller: widget.controller,
        style: widget.textStyle,
        textAlign: widget.textAlign,
        textAlignVertical: TextAlignVertical.center,
        decoration: textInput.copyWith(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomImageView(
              fit: BoxFit.contain,
              imagePath: ImageConstant.search,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(maxHeight: 14),
          hintText: widget.placeholder ?? "",
          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: appTheme.primaryColor,
          ),
          suffixIcon: isEditting
              ? IconButton(
                  onPressed: () {
                    widget.controller.clear();
                    widget.onChanged('');
                  },
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.clear,
                    ),
                  ),
                )
              : const SizedBox(width: 0),
          suffixIconConstraints:
              const BoxConstraints(maxWidth: 34, maxHeight: 14),
        ),
        onEditingComplete: () => setState(() {
          isEditting = false;
          FocusManager.instance.primaryFocus?.unfocus();
          widget.onEditingComplete?.call();
        }),
        onTap: () => setState(() {
          isEditting = true;
        }),
        onChanged: (String value) {
          widget.onChanged(value);
          setState(() {
            isEditting = true;
          });
        },
      ),
    );
  }

  static InputDecoration textInput = const InputDecoration(
    contentPadding: EdgeInsets.zero,
    isDense: true,
    border: InputBorder.none,
  );
}
