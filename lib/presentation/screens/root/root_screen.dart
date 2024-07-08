import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/common/constant/image_constant.dart';
import 'package:test_app/common/injection/get_it.dart';
import 'package:test_app/presentation/blocs/fav/fav_bloc.dart';
import 'package:test_app/presentation/cubits/root/root_cubit.dart';
import 'package:test_app/presentation/cubits/root/root_state.dart';
import 'package:test_app/presentation/screens/root/dash_board_screen.dart';
import 'package:test_app/presentation/screens/root/fav_screen.dart';
import 'package:test_app/presentation/screens/root/setting_screen.dart';
import 'package:test_app/presentation/widgets/custom_image_widget.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RootCubit, RootState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text(
              _getTitle(state.navbarItem),
            ),
          ),
          bottomNavigationBar: _buildBottomNav(state: state),
          body: _buildBody(state.navbarItem),
        );
      },
      listener: (BuildContext context, RootState state) {
        switch (state.navbarItem) {
          case NavbarItem.dashboard:
          case NavbarItem.favourite:
            context.read<FavBloc>().add(const FetchData());

          case NavbarItem.setting:
          default:
        }
      },
    );
  }

  Widget _buildBody(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.dashboard:
        return const DashboardScreen();
      case NavbarItem.favourite:
        return const FavScreen();
      case NavbarItem.setting:
        return const SettingScreen();
    }
  }

  String _getTitle(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.dashboard:
        return l10n().dashboard;
      case NavbarItem.favourite:
        return l10n().favourite;
      case NavbarItem.setting:
        return l10n().setting;
    }
  }

  Widget _buildBottomNav({required RootState state}) {
    return BottomNavigationBar(
      useLegacyColorScheme: false,
      // unselectedLabelStyle: styling...,
      // selectedLabelStyle: styling...
      currentIndex: context.read<RootCubit>().state.index,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        context.read<RootCubit>().updateIndex(index);
      },
      elevation: 1,
      backgroundColor: Colors.white,
      items: _buildNavItems(state: state),
    );
  }

  List<BottomNavigationBarItem> _buildNavItems({required RootState state}) =>
      List.generate(3, (index) {
        final Map bottomMenuMap = {
          l10n().dashboard: ImageConstant.navDashboard,
          l10n().favourite: ImageConstant.navFavourite,
          l10n().setting: ImageConstant.navSetting,
        };

        // final Map activeBottomMenuMap = {
        //   l10n().home: ImageConstant.imgActiveHome,
        //   l10n().clients: ImageConstant.imgActiveClients,
        //   // l10n().allocate: ImageConstant.imageNotFound,
        //   l10n().program: ImageConstant.imgActiveProgram,
        //   l10n().coming_soon2: ImageConstant.imgProgram,
        // };

        return BottomNavigationBarItem(
          label: bottomMenuMap.keys.toList()[index],
          // activeIcon: Padding(
          //   padding: const EdgeInsets.only(top: 10, bottom: 5),
          //   child: CustomImageView(
          //     height: 24,
          //     width: 24,
          //     imagePath: activeBottomMenuMap.values.toList()[index],
          //   ),
          // ),
          icon: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5),
            child: CustomImageView(
              height: 24,
              width: 24,
              color: _getIconColor(index: index, state: state),
              imagePath: bottomMenuMap.values.toList()[index],
            ),
          ),
        );
      });

  _getIconColor({required int index, required RootState state}) {
    Color iconColor = Colors.lightBlue;
    if (state.navbarItem == NavbarItem.values[index]) {
      iconColor = Colors.purple;
    }

    return iconColor;
  }
}
