import '/flutter_flow/flutter_flow_util.dart';
import 'editar_horario_sheet_widget.dart' show EditarHorarioSheetWidget;
import 'package:flutter/material.dart';

class EditarHorarioSheetModel
    extends FlutterFlowModel<EditarHorarioSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for aperturaField widget.
  FocusNode? aperturaFieldFocusNode;
  TextEditingController? aperturaFieldTextController;
  String? Function(BuildContext, String?)? aperturaFieldTextControllerValidator;
  // State field(s) for cierreField widget.
  FocusNode? cierreFieldFocusNode;
  TextEditingController? cierreFieldTextController;
  String? Function(BuildContext, String?)? cierreFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    aperturaFieldFocusNode?.dispose();
    aperturaFieldTextController?.dispose();

    cierreFieldFocusNode?.dispose();
    cierreFieldTextController?.dispose();
  }
}
