import 'package:image_picker/image_picker.dart';

class PictureRepository {
  Future<XFile?> pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    return image;
  }

  Future<XFile?> getImageFromCamera(CameraDevice? preferredCamera) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: preferredCamera ?? CameraDevice.rear,
    );
    return image;
  }
}
