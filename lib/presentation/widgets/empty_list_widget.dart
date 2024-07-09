import 'package:flutter/widgets.dart';
import 'package:test_app/common/injection/get_it.dart';

class EmptyListWIdget extends StatelessWidget {
  const EmptyListWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        l10n().empty_data_desc,
      ),
    );
  }
}
