import 'package:flutter/material.dart';

class SettingTiles extends StatefulWidget {
  const SettingTiles({
    super.key,
    this.onTap,
    required this.title,
    required this.subTitle,
    this.trailingText,
  });

  final void Function()? onTap;
  final String title;
  final String subTitle;
  final String? trailingText;

  @override
  State<SettingTiles> createState() => _SettingTilesState();
}

class _SettingTilesState extends State<SettingTiles> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        Icons.language,
      ),
      title: Text(
        widget.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        widget.subTitle,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.trailingText ?? '',
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
        ],
      ),
      onTap: () => widget.onTap,
    );
  }
}
