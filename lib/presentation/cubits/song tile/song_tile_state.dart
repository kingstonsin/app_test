class SongTileState {
  final int count;
  final String currentPlayedSong;
  final bool isPlaying;
  const SongTileState({
    this.count = 0,
    this.isPlaying = false,
    this.currentPlayedSong = '',
  });

  SongTileState copyWith(
      {int? count, bool? isPlaying, String? currentPlayedSong}) {
    return SongTileState(
      count: count ?? this.count,
      isPlaying: isPlaying ?? this.isPlaying,
      currentPlayedSong: currentPlayedSong ?? this.currentPlayedSong,
    );
  }
}
