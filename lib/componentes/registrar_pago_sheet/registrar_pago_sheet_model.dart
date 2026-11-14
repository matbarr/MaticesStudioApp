import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registrar_pago_sheet_widget.dart' show RegistrarPagoSheetWidget;
import 'package:flutter/material.dart';

class RegistrarPagoSheetModel
    extends FlutterFlowModel<RegistrarPagoSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for metodoDropDown widget.
  String? metodoDropDownValue;
  FormFieldController<String>? metodoDropDownValueController;
  // State field(s) for montoField widget.
  FocusNode? montoFieldFocusNode;
  TextEditingController? montoFieldTextController;
  String? Function(BuildContext, String?)? montoFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    montoFieldFocusNode?.dispose();
    montoFieldTextController?.dispose();
  }
}
