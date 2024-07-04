import 'package:bloc/bloc.dart';
import 'package:test_app/presentation/cubits/widgets/scroll_loader_state.dart';
import 'package:test_app/utils/logger.dart';

class ScrollLoaderCubit extends Cubit<ScrollLoaderState> {
  ScrollLoaderCubit() : super(const ScrollLoaderState());

  Future<void> onScrollEnd() async {
    logD('onScrollEnd...');
    emit(state.copyWith(scrollingStatus: ScrollingStatus.endScroll));
    // Future.delayed(const Duration(seconds: 2)).then((_) {
    //   emit(state.copyWith(scrollingStatus: ScrollingStatus.idle));
    // });
  }

  void onOverScroll() {
    logD('onOverScroll...');
    emit(state.copyWith(scrollingStatus: ScrollingStatus.overScroll));
  }
}
