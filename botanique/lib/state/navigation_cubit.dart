import 'package:flutter_bloc/flutter_bloc.dart';

import '../util/navigation_constants.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());

  void changePage(String pageName) {
    final int index = NavigationConstants.pageNameToIndex(pageName);
    emit(state.copyWith(index: index, isNavBarHidden: index >= 4));
  }

  bool isSignUpScreen() {
    return state.isSignUpScreen;
  }

  void toggleSignUpScreen() {
    emit(state.copyWith(isSignUpScreen: !state.isSignUpScreen));
  }
}

class NavigationState {
  final int index;
  final bool isSignUpScreen;
  final bool isNavBarHidden;

  NavigationState(
    this.index,
    this.isSignUpScreen,
    this.isNavBarHidden,
  );

  NavigationState copyWith({
    int? index,
    bool? isSignUpScreen,
    bool? isNavBarHidden,
  }) {
    return NavigationState(
      index ?? this.index,
      isSignUpScreen ?? this.isSignUpScreen,
      isNavBarHidden ?? this.isNavBarHidden,
    );
  }

  static NavigationState initial() {
    return NavigationState(4, false, true);
  }
}
