import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:intl/intl.dart';

class EmitirBoletaController extends GetxController {
  final double paddin = 3.0;
  String monto = "0";

  concatenarMonto(String add) {
    if (monto == "0")
      monto = add;
    else
      monto += add;
    this._montoMoneda();
  }

  eliminarUltimoMonto() {
    if (this.monto.length > 1) {
      String tmpMonto = this.monto.replaceAll(",", "");
      this.monto = tmpMonto.substring(0, tmpMonto.length - 1);
    } else {
      this.monto = "0";
    }
    this._montoMoneda();
  }

  limpiarMonto() {
    this.monto = "0";
    this._montoMoneda();
  }

  emitirBoleta() {
    double montoFinal = double.parse(monto.replaceAll(",", ""));
    Get.toNamed('/detalle-boleta', arguments: montoFinal);
  }

  _montoMoneda() {
    monto = new NumberFormat("#,##0", "es_US")
        .format(double.parse(monto.replaceAll(",", "")));
    update(["calculadora"]);
  }
}
