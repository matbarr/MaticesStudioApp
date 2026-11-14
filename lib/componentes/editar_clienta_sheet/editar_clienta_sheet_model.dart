import '/flutter_flow/flutter_flow_util.dart';
import 'editar_clienta_sheet_widget.dart' show EditarClientaSheetWidget;
import 'package:flutter/material.dart';

class EditarClientaSheetModel
    extends FlutterFlowModel<EditarClientaSheetWidget> {
  ///  Local state fields for this component.

  DateTime? inicio;

  DateTime? fin;

  ///  State fields for stateful widgets in this component.

  // State field(s) for nombreField widget.
  FocusNode? nombreFieldFocusNode;
  TextEditingController? nombreFieldTextController;
  String? Function(BuildContext, String?)? nombreFieldTextControllerValidator;
  // State field(s) for telefonoField widget.
  FocusNode? telefonoFieldFocusNode;
  TextEditingController? telefonoFieldTextController;
  String? Function(BuildContext, String?)? telefonoFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFieldFocusNode?.dispose();
    nombreFieldTextController?.dispose();

    telefonoFieldFocusNode?.dispose();
    telefonoFieldTextController?.dispose();
  }
}
