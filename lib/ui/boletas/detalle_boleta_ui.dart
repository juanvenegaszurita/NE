import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:negocio_electronico/ui/components/components.dart';
import 'package:negocio_electronico/localizations.dart';
import 'package:negocio_electronico/controllers/detalle_boleta_controller.dart';

class DetalleBoletaUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return GetBuilder<DetalleBoletaController>(
      init: DetalleBoletaController(),
      id: "detalle_boleta",
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text(labels?.emitirBoleta?.title),
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
              child: Column(
                children: [
                  Text("Monto ${Get.arguments}"),
                  PrimaryButton(
                    labelText: "Cambiar Monto",
                    onPressed: () => Get.back(result: Get.arguments),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
