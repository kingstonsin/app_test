import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:test_app/common/enums/filter_enum.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/presentation/blocs/dashboard/base/fetch_list_bloc.dart';
import 'package:test_app/presentation/cubits/widgets/scroll_loader_cubit.dart';
import 'package:test_app/presentation/cubits/widgets/scroll_loader_state.dart';
import 'package:test_app/presentation/widgets/custom_error_widget.dart';
import 'package:test_app/presentation/widgets/custom_search_bar.dart';
import 'package:test_app/presentation/widgets/empty_list_widget.dart';
import 'package:test_app/presentation/widgets/filter_widget.dart';
import 'package:test_app/presentation/widgets/tiles/song_tile.dart';
import 'package:test_app/theme/theme_helper.dart';
import 'package:test_app/utils/platform/scroll_utils.dart';

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
            (offset, limit, terms, entity) => songListRepoImp.getSongList(
              offset: offset,
              limit: limit,
              terms: terms.isEmpty ? 'Eminem' : Uri.encodeQueryComponent(terms),
              entity: entity,
            ),
          ),
          child: BlocConsumer<FetchListBloc, FetchListState>(
            builder: (context, state) {
              if (state is FetchListInitial || state is FetchListLoading) {
                return const SizedBox();
              }

              if (state is FetchListError) {
                return const CustomErrorWidget();
              }

              if (state is FetchListLoaded) {
                return _buildBody(state, context);
              }

              return const EmptyListWidget();
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
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 6 * 4,
                child: CustomSearchBar(
                  placeholder: l10n().application_search_hint,
                  controller: _searchBarController,
                  onChanged: (_) {},
                  onEditingComplete: () {
                    context.read<FetchListBloc>().add(
                          GetDataEvent(
                            offset: 0,
                            limit: state.limit,
                            terms: Uri.encodeQueryComponent(
                                _searchBarController.text),
                            entity: state.entity,
                          ),
                        );
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 6 * 2,
                child: Container(
                  color: Colors.white,
                  child: FilterWidget(
                    onValueChanged: (value) {
                      context.read<FetchListBloc>().add(
                            GetDataEvent(
                              offset: 0,
                              limit: state.limit,
                              terms: Uri.encodeQueryComponent(
                                  _searchBarController.text),
                              entity: value.getParam,
                            ),
                          );
                    },
                    selectedMediaType: MediaType.values
                        .firstWhere((e) => e.getParam == state.entity),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                context.read<FetchListBloc>().add(
                      GetDataEvent(
                        offset: 0,
                        limit: state.limit,
                        terms: state.terms,
                        entity: state.entity,
                      ),
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
                              entity: state.entity,
                            ),
                          );
                    }

                    context.read<ScrollLoaderCubit>().onScrollEnd();
                  });
                },
                child: state.data.isEmpty
                    ? const EmptyListWidget()
                    : ListView.builder(
                        physics: defaultScrollBehaviour,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return BlocBuilder<SongTileCubit, SongTileState>(
                            builder: (context, songTileState) {
                              final song = state.data[index];

                              return SongTile(
                                song: state.data[index],
                                isFavorite: context
                                    .read<SongTileCubit>()
                                    .isFav(song: song),
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
              ),
            ),
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
