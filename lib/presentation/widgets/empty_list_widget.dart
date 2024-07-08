import 'package:flutter/widgets.dart';

class EmptyListWIdget extends StatelessWidget {
  const EmptyListWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Data not available for now'), //TODO l10n
    );
  }
}
