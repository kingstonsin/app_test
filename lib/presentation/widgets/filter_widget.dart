import 'package:flutter/material.dart';
import 'package:test_app/common/enums/filter_enum.dart';

class FilterWidget extends StatefulWidget {
  final Function(MediaType) onValueChanged;
  final MediaType selectedMediaType;
  const FilterWidget(
      {super.key,
      required this.onValueChanged,
      required this.selectedMediaType});
  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<MediaType>(
      value: widget.selectedMediaType,
      onChanged: (MediaType? newValue) {
        if (newValue != null) {
          widget.onValueChanged(newValue);
        }
      },
      items: MediaType.values
          .map((mediaType) => DropdownMenuItem<MediaType>(
                value: mediaType,
                child: Text(
                  mediaType.getLabel,
                  style: const TextStyle(color: Colors.black),
                ),
              ))
          .toList(),
      dropdownColor: Colors.white,
      style: const TextStyle(color: Colors.white),
      iconEnabledColor: Colors.black,
    );
  }
}
