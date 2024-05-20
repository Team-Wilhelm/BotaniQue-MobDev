import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/dtos/user/user_dto.dart';

class UserCubit extends Cubit<UserDto> {
  UserCubit()
      : super(UserDto(username: null, password: null, base64Image: null, userEmail: null));

  void setUserEmail(String userEmail) {
    emit(state.copyWith(userEmail: userEmail));
  }

  void updateUsername(String username) {
    emit(state.copyWith(username: username));
  }

  void updatePassword(String password) {
    emit(state.copyWith(password: password));
  }

  void updateBase64Image(String base64Image) {
    emit(state.copyWith(base64Image: base64Image));
  }

  void deleteBase64Image() {
    emit(state.copyWith(base64Image: null));
  }

  void reset() {
    emit(UserDto(username: null, password: null, base64Image: null, userEmail: null));
  }
}
