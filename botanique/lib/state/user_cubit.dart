import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/dtos/update_user_dto.dart';

class UpdateUserCubit extends Cubit<UpdateUserDto> {
  UpdateUserCubit() : super(UpdateUserDto(username: null, password: null, base64Image: null));

  void updateUsername(String username) {
    emit(state.copyWith(username: username));
  }

  void updatePassword(String password) {
    emit(state.copyWith(username: password));
  }

  void updateBase64Image(String base64Image) {
    emit(state.copyWith(username: base64Image));
  }
}
