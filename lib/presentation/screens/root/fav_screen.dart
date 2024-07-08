import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/cubits/fav/fav_bloc.dart';
import 'package:test_app/presentation/widgets/empty_list_widget.dart';
import 'package:test_app/presentation/widgets/tiles/song_tile.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavBloc, FavState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.favList!.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return SongTile(
                    song: state.favList![index],
                    isFavorite: true,
                    onFavoriteChanged: (bool value) {},
                  );
                },
                itemCount: state.favList!.length,
              )
            : const EmptyListWIdget();
      },
    );
  }
}
