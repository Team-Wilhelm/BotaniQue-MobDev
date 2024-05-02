import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<User> {
  UserCubit(super.state);

  void updateUsername(String username) {
    emit(
      state.copyWith(username: username),
    );
  }
}

class User {
  final String username = "";
  
  User copyWith({required String username}) {
    return User();
  }
  }
