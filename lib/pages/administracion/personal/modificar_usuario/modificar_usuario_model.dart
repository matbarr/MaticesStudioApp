import '/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'modificar_usuario_widget.dart' show ModificarUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ModificarUsuarioModel extends FlutterFlowModel<ModificarUsuarioWidget> {
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
  // State field(s) for Rol widget.
  String? rolValue;
  FormFieldController<String>? rolValueController;
  // State field(s) for CorreoCampo widget.
  FocusNode? correoCampoFocusNode;
  TextEditingController? correoCampoTextController;
  String? Function(BuildContext, String?)? correoCampoTextControllerValidator;
  // State field(s) for TelefonoCampo widget.
  FocusNode? telefonoCampoFocusNode;
  TextEditingController? telefonoCampoTextController;
  late MaskTextInputFormatter telefonoCampoMask;
  String? Function(BuildContext, String?)? telefonoCampoTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
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

    telefonoCampoFocusNode?.dispose();
    telefonoCampoTextController?.dispose();

    menuModel.dispose();
  }
}
