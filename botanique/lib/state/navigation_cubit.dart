import 'package:flutter_bloc/flutter_bloc.dart';

import '../util/navigation_constants.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit() : super(4);

  void changePage(String pageName) {
    final int index = NavigationConstants.pageNameToIndex(pageName);
    emit(index);
  }

  bool isNavBarHidden() {
    return state >= 4;
  }
}
