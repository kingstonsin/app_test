import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/presentation/blocs/dashboard/base/fetch_list_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: SafeArea(
        child: BlocProvider<FetchListBloc>(
          create: (context) => FetchListBloc(
            (offset, limit, keyword) => songListRepoImp.getSongList(20, 20, ''),
          ),
          child: BlocConsumer<FetchListBloc, FetchListState>(
            builder: (context, state) {
              if (state is FetchListInitial) {
                return const Text("Initial State");
              }

              if (state is FetchListError) {
                return const Text("There is an error");
              }

              if (state is FetchListLoading) {
                return const CircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 5,
                );
              }

              if (state is FetchListLoaded) {
                //TODO build body
                return Text("Data is loaded, the data is ${state.data}");
              }

              return const Text("default case");
            },
            listener: (BuildContext context, FetchListState<dynamic> state) {
              //TODO update params with state
              //TODO FetchListLoadMore
              //TODO FetchListOnSearch
              // context.read<FetchListBloc>().add(
              //     GetDataEvent(offset: state.offset++, limit: 10, keyword: ''));
            },
          ),
        ),
      ),
    );
  }
}
