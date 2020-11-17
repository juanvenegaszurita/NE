import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:negocio_electronico/controllers/adminPage/services_controller.dart';
import 'package:negocio_electronico/localizations.dart';
import 'package:negocio_electronico/ui/components/components.dart';
import 'package:negocio_electronico/helpers/helpers.dart';
import 'package:get/get.dart';

import '../../helpers/validator.dart';
import '../components/avatar.dart';
import '../components/primary_button.dart';

class ServiceUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return GetBuilder<ServiceController>(
      init: ServiceController(),
      builder: (controller) => Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          title: Text(labels?.services?.title),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: 800,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[400]),
              ),
              child: this._buildFormulario(context, labels),
            ),
          ),
        ),
      ),
    );
  }

  _buildFormulario(BuildContext context, AppLocalizations_Labels labels) {
    return GetBuilder<ServiceController>(
      id: "formService",
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: this._formulario(controller, labels),
      ),
    );
  }

  _formulario(ServiceController controller, AppLocalizations_Labels labels) {
    return [
      Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FormInputFieldWithIcon(
                    controller: controller.title,
                    iconPrefix: Icons.title,
                    labelText: labels?.services?.title,
                    validator: Validator(labels).notEmpty,
                    keyboardType: TextInputType.text,
                    onChanged: (value) => null,
                    onSaved: (value) => controller.title.text = value,
                  ),
                  FormVerticalSpace(height: 5),
                  FormInputFieldWithIcon(
                    controller: controller.description,
                    iconPrefix: Icons.description,
                    labelText: labels?.services?.edit_description,
                    validator: Validator(labels).notEmpty,
                    keyboardType: TextInputType.multiline,
                    onChanged: (value) => null,
                    onSaved: (value) => controller.description.text = value,
                    minLines: 5,
                    maxLines: 15,
                  ),
                  FormVerticalSpace(height: 5),
                  FormInputFieldWithIcon(
                    controller: controller.positions,
                    iconPrefix: Icons.table_rows,
                    labelText: labels?.services?.edit_position,
                    validator: Validator(labels).notEmpty,
                    keyboardType: TextInputType.number,
                    onChanged: (value) => null,
                    onSaved: (value) => controller.positions.text = value,
                  ),
                  FormVerticalSpace(height: 5),
                  PrimaryButton(
                    icon: Icons.add_a_photo,
                    onPressed: () => this._showSelectionDialog(controller),
                  ),
                  Image.asset(
                    controller?.image.text,
                    fit: BoxFit.cover,
                    width: 120.0,
                    height: 120.0,
                  )
                ],
              ),
            ),
          ),
        ),
      )
    ];
  }

  Future<void> _showSelectionDialog(ServiceController controller) {
    return Get.dialog(
      AlertDialog(
        title: Text("Dónde quiere seleccionar la imágen?"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("galería"),
                onTap: () {
                  controller.openGallery();
                },
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              GestureDetector(
                child: Text("Camara"),
                onTap: () {
                  controller.openCamera();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
