import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:headers/src/widget/boton._gordo.dart';
import 'package:headers/src/widget/header.dart';


class EmergencyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Center(child: BotonGordo(),)
      )
   );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.briefcase,
      icon2: FontAwesomeIcons.folderOpen,
      titulo: 'CONAC',
      subtittulo: 'Catalogo de Objeto de Gastos',          
    );
  }
}