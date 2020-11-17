import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';

class ServiceController extends GetxController{
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController positions = TextEditingController();
  TextEditingController image = TextEditingController(text: "");

  saveForm() {

  }

  void openGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    print(picture.path);
    this.image.text = picture.path;
    update(["formService"]);
  }

  void openCamera() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    print(picture.path);
    this.image.text = picture.path;
    update(["formService"]);
  }
}