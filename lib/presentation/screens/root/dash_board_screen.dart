import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/presentation/blocs/dashboard/base/fetch_list_bloc.dart';
import 'package:test_app/presentation/cubits/widgets/scroll_loader_cubit.dart';
import 'package:test_app/presentation/cubits/widgets/scroll_loader_state.dart';
import 'package:test_app/presentation/widgets/custom_search_bar.dart';
import 'package:test_app/presentation/widgets/tiles/song_tile.dart';
import 'package:test_app/theme/theme_helper.dart';

import '../../cubits/song tile/song_tile_cubit.dart';
import '../../cubits/song tile/song_tile_state.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final TextEditingController _searchBarController = TextEditingController();

  @override
  void dispose() {
    _searchBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appTheme.backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: SafeArea(
        child: BlocProvider<FetchListBloc>(
          create: (context) => FetchListBloc(
            (offset, limit, terms) => songListRepoImp.getSongList(
                offset: offset,
                limit: limit,
                terms:
                    terms.isEmpty ? 'Eminem' : Uri.encodeQueryComponent(terms)),
          ),
          child: BlocConsumer<FetchListBloc, FetchListState>(
            builder: (context, state) {
              if (state is FetchListInitial) {
                return const Text("Initial State");
              }

              if (state is FetchListError) {
                return const Text("There is an error");
              }

              // if (state is FetchListLoading) {
              //   return ShimmerLoading(
              //     child: Column(
              //       children: [
              //         ListView.builder(
              //           itemCount: 1,
              //           shrinkWrap: true,
              //           itemBuilder: (context, index) {
              //             return Container(
              //               height: 130,
              //               margin: const EdgeInsets.symmetric(
              //                   horizontal: 18, vertical: 5),
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.circular(12.0),
              //                 boxShadow: [
              //                   BoxShadow(
              //                     color: Colors.grey.withOpacity(0.3),
              //                     spreadRadius: 2,
              //                     blurRadius: 5,
              //                     offset: const Offset(0, 3),
              //                   ),
              //                 ],
              //               ),
              //             );
              //           },
              //         ),
              //       ],
              //     ),
              //   );
              // }

              if (state is FetchListLoaded) {
                return _buildBody(state, context);
              }

              return const Text("default case");
            },
            listener: (BuildContext context, FetchListState<dynamic> state) {
              if (state is FetchListLoading || state is FetchListLoadMore) {
                EasyLoading.show();
              } else if (EasyLoading.isShow) {
                EasyLoading.dismiss();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBody(FetchListLoaded<dynamic> state, BuildContext context) =>
      Column(
        children: [
          CustomSearchBar(
            placeholder: l10n().application_search_hint,
            controller: _searchBarController,
            onChanged: (_) {},
            onEditingComplete: () {
              context.read<FetchListBloc>().add(
                    GetDataEvent(
                      offset: 0,
                      limit: state.limit,
                      terms:
                          Uri.encodeQueryComponent(_searchBarController.text),
                    ),
                  );
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: RefreshIndicator(
                onRefresh: () async {
                  context.read<FetchListBloc>().add(
                        GetDataEvent(
                            offset: 0, limit: state.limit, terms: state.terms),
                      );
                },
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    return handleScrollNotification(notification, context,
                        overScroll: () {
                      context.read<ScrollLoaderCubit>().onOverScroll();
                    }, scrollEnd: () {
                      if (context
                              .read<ScrollLoaderCubit>()
                              .state
                              .scrollingStatus ==
                          ScrollingStatus.overScroll) {
                        context.read<FetchListBloc>().add(
                              LoadMoreEvent(
                                data: state.data,
                                offset: state.offset,
                                limit: state.limit,
                                terms: _searchBarController.text,
                              ),
                            );
                      }

                      context.read<ScrollLoaderCubit>().onScrollEnd();
                    });
                  },
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return BlocBuilder<SongTileCubit, SongTileState>(
                        builder: (context, songTileState) {
                          final song = state.data[index];

                          return SongTile(
                            song: state.data[index],
                            isFavorite:
                                context.read<SongTileCubit>().isFav(song: song),
                            onFavoriteChanged: (bool value) {
                              value
                                  ? context
                                      .read<SongTileCubit>()
                                      .onAddToFav(song: state.data[index])
                                  : context
                                      .read<SongTileCubit>()
                                      .onRemoveFav(song: state.data[index]);
                            },
                          );
                        },
                      );
                    },
                    itemCount: state.data.length,
                  ),
                )),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            padding: const EdgeInsets.all(4),
            child: BlocBuilder<ScrollLoaderCubit, ScrollLoaderState>(
              builder: (context, scrollLoaderState) {
                return scrollLoaderState.scrollingStatus ==
                        ScrollingStatus.overScroll
                    ? LoadingAnimationWidget.waveDots(
                        color: appTheme.secondaryColor,
                        size: 30,
                      )
                    : const SizedBox();
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      );

  bool handleScrollNotification(
      ScrollNotification notification, BuildContext context,
      {required Function overScroll, required Function scrollEnd}) {
    if (notification is ScrollUpdateNotification &&
        notification.metrics.pixels >
            notification.metrics.maxScrollExtent + 50) {
      overScroll();
    } else if (notification is ScrollEndNotification) {
      scrollEnd();
    }
    return false;
  }
}
