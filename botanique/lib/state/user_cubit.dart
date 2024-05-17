import 'package:botanique/state/image_action_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../models/dtos/user/user_dto.dart';
import '../repositories/camera_repository.dart';

class UserCubit extends Cubit<UserCubitState> implements ImageActionCubit {
  final PictureRepository pictureRepository = PictureRepository();

  UserCubit() : super(UserCubitState.empty());

  void setUserEmail(String userEmail) {
    final UserDto userDto = state.userDto.copyWith(userEmail: userEmail);
    emit(state.copyWith(userDto: userDto));
  }

  void updateUsername(String username) {
    final UserDto userDto = state.userDto.copyWith(username: username);
    emit(state.copyWith(userDto: userDto));
  }

  void updatePassword(String password) {
    final UserDto userDto = state.userDto.copyWith(password: password);
    emit(state.copyWith(userDto: userDto));
  }

  void updateBlobUrl(String blobUrl) {
    final UserDto userDto = state.userDto.copyWith(blobUrl: blobUrl);
    emit(state.copyWith(userDto: userDto));
  }

  void deleteBlobUrl() {
    final UserDto userDto = state.userDto.copyWith(blobUrl: null);
    emit(state.copyWith(userDto: userDto));
  }

  void deleteXFileImage() {
    emit(state.copyWith(xFileImage: null));
  }

  @override
  Future<void> getImageFromCamera() async {
    final image = await pictureRepository.getImageFromCamera();
    if (image != null) {
      emit(state.copyWith(xFileImage: image));
    } else {}
  }

  @override
  Future<void> getImageFromGallery() async {
    final image = await pictureRepository.pickImageFromGallery();
    if (image != null) {
      emit(state.copyWith(xFileImage: image));
    } else {}
  }
}

class UserCubitState {
  final UserDto userDto;
  final XFile? xFileImage;

  UserCubitState({required this.userDto, this.xFileImage});

  UserCubitState copyWith({UserDto? userDto, XFile? xFileImage}) {
    return UserCubitState(
        userDto: userDto ?? this.userDto,
        xFileImage: xFileImage ?? this.xFileImage);
  }

  static UserCubitState empty() {
    return UserCubitState(userDto: UserDto(), xFileImage: null);
  }
}
