import 'package:flutter_bloc/flutter_bloc.dart';

import '../util/navigation_constants.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(4, false));

  void changePage(String pageName) {
    final int index = NavigationConstants.pageNameToIndex(pageName);
    emit(state.copyWith(index: index));
  }

  bool isNavBarHidden() {
    return state.index >= 4;
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

  NavigationState(
    this.index,
    this.isSignUpScreen,
  );

  NavigationState copyWith({
    int? index,
    bool? isSignUpScreen,
  }) {
    return NavigationState(
      index ?? this.index,
      isSignUpScreen ?? this.isSignUpScreen,
    );
  }
}
