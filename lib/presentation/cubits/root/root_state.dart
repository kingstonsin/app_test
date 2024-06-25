enum NavbarItem { dashboard, favourite, setting }

class RootState {
  final NavbarItem navbarItem;
  final int index;

  const RootState({
    this.navbarItem = NavbarItem.dashboard,
    this.index = 0,
  });

  RootState copyWith({
    int? index,
    NavbarItem? navbarItem,
  }) {
    return RootState(
      index: index ?? this.index,
      navbarItem: navbarItem ?? this.navbarItem,
    );
  }
}
