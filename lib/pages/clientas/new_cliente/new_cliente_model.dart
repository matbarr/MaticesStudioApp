import '/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'new_cliente_widget.dart' show NewClienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NewClienteModel extends FlutterFlowModel<NewClienteWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NombreCampo widget.
  FocusNode? nombreCampoFocusNode;
  TextEditingController? nombreCampoTextController;
  String? Function(BuildContext, String?)? nombreCampoTextControllerValidator;
  // State field(s) for ApellidosCampos widget.
  FocusNode? apellidosCamposFocusNode;
  TextEditingController? apellidosCamposTextController;
  String? Function(BuildContext, String?)?
      apellidosCamposTextControllerValidator;
  // State field(s) for CorreoCampo widget.
  FocusNode? correoCampoFocusNode;
  TextEditingController? correoCampoTextController;
  String? Function(BuildContext, String?)? correoCampoTextControllerValidator;
  // State field(s) for CodigoCampo widget.
  FocusNode? codigoCampoFocusNode;
  TextEditingController? codigoCampoTextController;
  String? Function(BuildContext, String?)? codigoCampoTextControllerValidator;
  // State field(s) for TelefonoCampo widget.
  FocusNode? telefonoCampoFocusNode;
  TextEditingController? telefonoCampoTextController;
  late MaskTextInputFormatter telefonoCampoMask;
  String? Function(BuildContext, String?)? telefonoCampoTextControllerValidator;
  // State field(s) for ObservacionCampo widget.
  FocusNode? observacionCampoFocusNode;
  TextEditingController? observacionCampoTextController;
  String? Function(BuildContext, String?)?
      observacionCampoTextControllerValidator;
  // Model for menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    nombreCampoFocusNode?.dispose();
    nombreCampoTextController?.dispose();

    apellidosCamposFocusNode?.dispose();
    apellidosCamposTextController?.dispose();

    correoCampoFocusNode?.dispose();
    correoCampoTextController?.dispose();

    codigoCampoFocusNode?.dispose();
    codigoCampoTextController?.dispose();

    telefonoCampoFocusNode?.dispose();
    telefonoCampoTextController?.dispose();

    observacionCampoFocusNode?.dispose();
    observacionCampoTextController?.dispose();

    menuModel.dispose();
  }
}
