import 'package:flutter/widgets.dart';
import 'package:test_app/common/injection/get_it.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        l10n().error_message,
      ),
    );
  }
}
