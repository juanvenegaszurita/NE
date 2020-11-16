import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:negocio_electronico/localizations.dart';
import 'package:negocio_electronico/models/models.dart';
import 'package:negocio_electronico/ui/boletas/boleta.dart';
import 'package:negocio_electronico/ui/ui.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: this.listMenu(context),
      ),
    );
  }

  List<Widget> listMenu(BuildContext context) {
    final labels = AppLocalizations.of(context);
    List<MenuOptionsModel> menuOptions = [
      MenuOptionsModel(
        key: labels?.menu?.home,
        widget: HomeUI(),
        icon: Icons.home,
      ),
      MenuOptionsModel(
        key: labels?.menu?.settings,
        widget: SettingsUI(),
        icon: Icons.settings,
      ),
      MenuOptionsModel(
        key: labels?.menu?.emitirBoleta,
        widget: EmitirBoletaUI(),
        icon: Icons.calculate,
      ),
    ];

    List<Widget> retorno = [
      DrawerHeader(
        child: Text('Menú'),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),
    ];
    menuOptions.forEach(
      (menu) => retorno.add(
        ListTile(
          leading: Icon(menu.icon ?? Icons.chevron_right),
          title: Text(menu.key),
          onTap: () => Get.to(menu.widget),
        ),
      ),
    );
    return retorno;
  }
}
