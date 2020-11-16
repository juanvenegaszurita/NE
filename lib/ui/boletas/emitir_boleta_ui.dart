import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:negocio_electronico/controllers/emitir_boleta_controller.dart';
import 'package:negocio_electronico/localizations.dart';
import 'package:negocio_electronico/ui/components/components.dart';
import 'package:negocio_electronico/ui/components/menu.dart';

class EmitirBoletaUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final labels = AppLocalizations.of(context);

    return GetBuilder<EmitirBoletaController>(
      init: EmitirBoletaController(),
      id: "emitir_boleta",
      builder: (controller) => Scaffold(
        drawer: Menu(),
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
              child: this._calculadora(context),
            ),
          ),
        ),
      ),
    );
  }

  _calculadora(BuildContext context) {
    /* return Column(
      children: calculadora,
    ); */
    return GetBuilder<EmitirBoletaController>(
      id: "calculadora",
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: this._bodyCalculadora(controller),
      ),
    );
  }

  _bodyCalculadora(EmitirBoletaController controller) {
    List<Widget> calculadora = [
      Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(controller.paddin),
              child: TextField(
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "\$ ${controller.monto}",
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: PrimaryButton(
              icon: Icons.delete,
              color: Colors.red[100],
              paddin: controller.paddin,
              onPressed: () async {
                controller.limpiarMonto();
              },
            ),
          ),
          Expanded(
            child: PrimaryButton(
              icon: Icons.backspace,
              color: Colors.yellow[200],
              paddin: controller.paddin,
              onPressed: () async {
                controller.eliminarUltimoMonto();
              },
            ),
          ),
        ],
      ),
    ];
    List<Widget> row = [];
    [7, 8, 9, 4, 5, 6, 1, 2, 3].forEach((i) {
      row.add(Expanded(
        child: PrimaryButton(
          labelText: i.toString(),
          color: Colors.green[100],
          paddin: controller.paddin,
          onPressed: () async {
            controller.concatenarMonto(i.toString());
          },
        ),
      ));
      if (i % 3 == 0) {
        calculadora.add(
          Row(
            children: row,
          ),
        );
        row = [];
      }
    });
    calculadora.add(
      Row(
        children: [
          Expanded(
            flex: 1,
            child: PrimaryButton(
              labelText: "0",
              color: Colors.green[100],
              paddin: controller.paddin,
              onPressed: () async {
                controller.concatenarMonto("0");
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: PrimaryButton(
              color: Colors.green,
              labelText: "Emitir",
              paddin: controller.paddin,
              onPressed: controller.monto != "0"
                  ? () async {
                      controller.emitirBoleta();
                    }
                  : null,
            ),
          )
        ],
      ),
    );
    return calculadora;
  }
}
