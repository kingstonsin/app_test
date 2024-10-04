import 'package:flutter/material.dart';
import 'package:test_app/data/model/song.dart';
import 'package:test_app/presentation/widgets/custom_image_widget.dart';
import 'package:test_app/theme/theme_helper.dart';

class SongTile extends StatelessWidget {
  final Song song;
  final bool isFavorite;
  final ValueChanged<bool> onFavoriteChanged;
  final bool isFavList;
  final bool isPlaying;
  final VoidCallback onPlay;
  final VoidCallback onStop;
  final String currentPlayedSong;
  const SongTile({
    super.key,
    required this.song,
    required this.isFavorite,
    required this.onFavoriteChanged,
    required this.onPlay,
    required this.onStop,
    required this.isPlaying,
    required this.isFavList,
    required this.currentPlayedSong,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: song.artworkUrl60!,
              width: 60.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    song.wrapperType ?? '',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    song.artistName ?? '',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    song.trackName ?? '',
                    style: theme.textTheme.displayMedium,
                  ),
                  Text(
                    song.primaryGenreName ?? '',
                    style: theme.textTheme.displaySmall?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                onFavoriteChanged(!isFavorite);
              },
            ),
            !isFavList
                ? IconButton(
                    icon: Icon(
                      isPlaying && currentPlayedSong == song.previewUrl
                          ? Icons.pause
                          : Icons.play_arrow,
                      color: isPlaying && currentPlayedSong == song.previewUrl
                          ? Colors.green
                          : Colors.blue,
                    ),
                    onPressed: isPlaying && currentPlayedSong == song.previewUrl
                        ? onStop
                        : onPlay,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
