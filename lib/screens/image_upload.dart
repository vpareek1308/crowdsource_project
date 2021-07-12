import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpload extends StatefulWidget {

  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  late File _image;
  bool gotImage = false;

  final picker = ImagePicker();

  _imgFromCamera() async {
    PickedFile? image = await picker.getImage(
        source: ImageSource.camera, imageQuality: 50
    );

    setState(() {
      _image = File(image!.path);
      gotImage = true;
    });
  }

  _imgFromGallery() async {
    PickedFile? image = await  picker.getImage(
        source: ImageSource.gallery, imageQuality: 50
    );

    setState(() {
      _image = File(image!.path);
      gotImage = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload Image"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 500,
                child: gotImage==false ? Text("Upload Image") : Image.file(_image),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: _imgFromCamera,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    )
                ),
                ElevatedButton(
                  onPressed: _imgFromGallery,
                  child: Icon(
                    Icons.filter,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
