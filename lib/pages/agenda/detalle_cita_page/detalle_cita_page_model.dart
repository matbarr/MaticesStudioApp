import '/backend/backend.dart';
import '/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'detalle_cita_page_widget.dart' show DetalleCitaPageWidget;
import 'package:flutter/material.dart';

class DetalleCitaPageModel extends FlutterFlowModel<DetalleCitaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CuentasRecord? nuevaCuenta;
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
  }
}
