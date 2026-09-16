class HomePageState {
  final int currentIndex;
  final bool isNavBarVisible;
  final bool isShowFloatingActionBottom;

  const HomePageState({
    this.currentIndex = 0,
    this.isNavBarVisible = true,
    this.isShowFloatingActionBottom = false,
  });

  HomePageState copyWith({
    int? currentIndex,
    bool? isNavBarVisible,
    bool? isShowFloatingActionBottom,
  }) {
    return HomePageState(
      currentIndex: currentIndex ?? this.currentIndex,
      isNavBarVisible: isNavBarVisible ?? this.isNavBarVisible,
      isShowFloatingActionBottom: isShowFloatingActionBottom??this.isShowFloatingActionBottom,
    );
  }
}