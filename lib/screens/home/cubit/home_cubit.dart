import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<Uint8List> images = [];

  void pickGalleryImage() async {
    final picker = ImagePicker();
    final selectedFile = await picker.pickImage(source: ImageSource.gallery);

    if (selectedFile != null) {
      XFile selectedImage = selectedFile;
      print(await selectedImage.readAsBytes());
      images.add(await selectedImage.readAsBytes());
      emit(HomeImageAdded());
      return;
    }
  }

  void pickCameraImage() async {
    final picker = ImagePicker();
    final selectedFile = await picker.pickImage(source: ImageSource.camera);

    if (selectedFile != null) {
      XFile selectedImage = selectedFile;
      print(await selectedImage.readAsBytes());
      images.add(await selectedImage.readAsBytes());
      emit(HomeImageAdded());
      return;
    }
  }
}
