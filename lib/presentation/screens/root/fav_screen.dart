import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/blocs/fav/fav_bloc.dart';
import 'package:test_app/presentation/widgets/empty_list_widget.dart';
import 'package:test_app/presentation/widgets/tiles/song_tile.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

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
                    onFavoriteChanged: (bool value) {
                      context.read<FavBloc>().add(RemoveData(
                            song: state.favList![index],
                          ));
                    },
                  );
                },
                itemCount: state.favList!.length,
              )
            : const EmptyListWidget();
      },
    );
  }
}
