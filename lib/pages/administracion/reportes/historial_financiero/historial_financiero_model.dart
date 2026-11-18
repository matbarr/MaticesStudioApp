import '/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'historial_financiero_widget.dart' show HistorialFinancieroWidget;
import 'package:flutter/material.dart';

class HistorialFinancieroModel
    extends FlutterFlowModel<HistorialFinancieroWidget> {
  ///  State fields for stateful widgets in this page.

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
