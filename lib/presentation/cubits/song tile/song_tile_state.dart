class SongTileState {
  final int count;

  const SongTileState({
    this.count = 0,
  });

  SongTileState copyWith({
    int? count,
  }) {
    return SongTileState(
      count: count ?? this.count,
    );
  }
}
