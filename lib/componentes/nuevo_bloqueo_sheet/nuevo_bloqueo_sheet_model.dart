import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'nuevo_bloqueo_sheet_widget.dart' show NuevoBloqueoSheetWidget;
import 'package:flutter/material.dart';

class NuevoBloqueoSheetModel extends FlutterFlowModel<NuevoBloqueoSheetWidget> {
  ///  Local state fields for this component.

  DateTime? inicio;

  DateTime? fin;

  ///  State fields for stateful widgets in this component.

  // State field(s) for tipoDropDown widget.
  String? tipoDropDownValue;
  FormFieldController<String>? tipoDropDownValueController;
  // State field(s) for motivoField widget.
  FocusNode? motivoFieldFocusNode;
  TextEditingController? motivoFieldTextController;
  String? Function(BuildContext, String?)? motivoFieldTextControllerValidator;
  // State field(s) for alcanceField widget.
  FocusNode? alcanceFieldFocusNode;
  TextEditingController? alcanceFieldTextController;
  String? Function(BuildContext, String?)? alcanceFieldTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    motivoFieldFocusNode?.dispose();
    motivoFieldTextController?.dispose();

    alcanceFieldFocusNode?.dispose();
    alcanceFieldTextController?.dispose();
  }
}
