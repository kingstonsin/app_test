enum ScrollingStatus { idle, overScroll, endScroll }

class ScrollLoaderState {
  final ScrollingStatus scrollingStatus;

  const ScrollLoaderState({
    this.scrollingStatus = ScrollingStatus.idle,
  });

  ScrollLoaderState copyWith({
    ScrollingStatus? scrollingStatus,
  }) {
    return ScrollLoaderState(
      scrollingStatus: scrollingStatus ?? this.scrollingStatus,
    );
  }
}
