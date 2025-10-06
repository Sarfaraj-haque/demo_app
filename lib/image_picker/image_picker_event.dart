  import 'package:equatable/equatable.dart';

  abstract class ImagePickerEvent extends Equatable {
    const ImagePickerEvent();
    @override
    List<Object> get props => [];
  }

  class ImagePickedByCamera extends ImagePickerEvent {}
  class ImagePickedByGallery extends ImagePickerEvent {}
