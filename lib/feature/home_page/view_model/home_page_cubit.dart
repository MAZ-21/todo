import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/feature/home_page/view_model/home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState());

  
  void changeIndex(int index){
    emit(state.copyWith(currentIndex: index));
  }

  void showNavBar() {
    emit(state.copyWith(isNavBarVisible: true));
  }
  
  void hideNaveBar() {
    emit(state.copyWith(isNavBarVisible: false));
  }

  void showFloatingActionBottom() {
    emit(state.copyWith(isShowFloatingActionBottom: true));
  }

  void hideFloatingActionBottom() {
    emit(state.copyWith(isShowFloatingActionBottom: false));
  }
  
}
