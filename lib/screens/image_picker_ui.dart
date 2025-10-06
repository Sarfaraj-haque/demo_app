import 'dart:io';

import 'package:demo_app/image_picker/image_picker_bloc.dart';
import 'package:demo_app/image_picker/image_picker_event.dart';
import 'package:demo_app/image_picker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickingUi extends StatelessWidget {
  const ImagePickingUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
          builder: (context, state) {
            if (state.file == null) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      context.read<ImagePickerBloc>().add(
                        ImagePickedByCamera(),
                      );
                    },
                    child: CircleAvatar(child: Icon(Icons.camera_alt)),
                  ),
                  InkWell(
                    onTap: () {
                      context.read<ImagePickerBloc>().add(
                        ImagePickedByGallery(),
                      );
                    },
                    child: CircleAvatar(child: Icon(Icons.photo)),
                  ),
                ],
              );
            } else {
              return Image.file(File(state.file!.path));
            }
          },
        ),
      ),
    );
  }
}
