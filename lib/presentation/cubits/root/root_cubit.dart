import 'package:bloc/bloc.dart';
import 'package:test_app/presentation/cubits/root/root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(const RootState());

  void updateIndex(int index) {
    switch (index) {
      case 0:
        return emit(
          state.copyWith(index: index, navbarItem: NavbarItem.dashboard),
        );

      case 1:
        return emit(
          state.copyWith(index: index, navbarItem: NavbarItem.favourite),
        );
      case 2:
        return emit(
          state.copyWith(index: index, navbarItem: NavbarItem.setting),
        );
    }
  }
}
