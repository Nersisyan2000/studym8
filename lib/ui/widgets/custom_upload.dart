import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_application_2/index.dart';

class CustomUpload extends StatefulWidget {
  CustomUpload({super.key, required this.image});

  XFile? image;

  @override
  State<CustomUpload> createState() => _CustomUploadState();
}

class _CustomUploadState extends State<CustomUpload> {
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return IconButton(
        highlightColor: transparent,
        onPressed: () {
          getImage();
        },
        icon: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundImage: widget.image != null
                  ? Image.file(File(widget.image!.path)).image
                  : null,
              radius: 90.0,
            ),
            Icon(widget.image == null ? Icons.add_a_photo_outlined : null)
          ],
        ));
  }

  Future getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      widget.image = image;
    });
  }
}
