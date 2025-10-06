import 'package:demo_app/image_picker/image_picker_event.dart';
import 'package:demo_app/image_picker/image_picker_state.dart';
import 'package:demo_app/utils/image_picker_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtils imagePickerUtils;

  ImagePickerBloc(this.imagePickerUtils) : super(ImagePickerState()) {
    on<ImagePickedByCamera>(cameraPickedImage);
    on<ImagePickedByGallery>(galleryPickedImage);
  }
  void cameraPickedImage(
    ImagePickedByCamera event,
    Emitter<ImagePickerState> emit,
  ) async {
    XFile? file = await imagePickerUtils.cameraImage();
    emit(state.copyWith(file: file));
  }

  void galleryPickedImage(
    ImagePickedByGallery event,
    Emitter<ImagePickerState> emit,
  ) async {
    XFile? file = await imagePickerUtils.galleryImage();
    emit(state.copyWith(file: file));
  }
}
