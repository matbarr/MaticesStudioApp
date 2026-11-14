import '/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'clienta_page_widget.dart' show ClientaPageWidget;
import 'package:flutter/material.dart';

class ClientaPageModel extends FlutterFlowModel<ClientaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for flitroNomTel widget.
  FocusNode? flitroNomTelFocusNode;
  TextEditingController? flitroNomTelTextController;
  String? Function(BuildContext, String?)? flitroNomTelTextControllerValidator;
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    flitroNomTelFocusNode?.dispose();
    flitroNomTelTextController?.dispose();

    menuModel.dispose();
  }
}
