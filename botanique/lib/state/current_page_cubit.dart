import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentPageCubit extends Cubit<int> {
  CurrentPageCubit() : super(0);

  void changePage(int page) {
    emit(page);
  }
}
