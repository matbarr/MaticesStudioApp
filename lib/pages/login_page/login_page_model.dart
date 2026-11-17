import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late MaskTextInputFormatter textFieldMask2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for cod1 widget.
  FocusNode? cod1FocusNode;
  TextEditingController? cod1TextController;
  String? Function(BuildContext, String?)? cod1TextControllerValidator;
  // State field(s) for cod2 widget.
  FocusNode? cod2FocusNode;
  TextEditingController? cod2TextController;
  String? Function(BuildContext, String?)? cod2TextControllerValidator;
  // State field(s) for cod3 widget.
  FocusNode? cod3FocusNode;
  TextEditingController? cod3TextController;
  String? Function(BuildContext, String?)? cod3TextControllerValidator;
  // State field(s) for cod4 widget.
  FocusNode? cod4FocusNode;
  TextEditingController? cod4TextController;
  String? Function(BuildContext, String?)? cod4TextControllerValidator;
  // State field(s) for cod5 widget.
  FocusNode? cod5FocusNode;
  TextEditingController? cod5TextController;
  String? Function(BuildContext, String?)? cod5TextControllerValidator;
  // State field(s) for cod6 widget.
  FocusNode? cod6FocusNode;
  TextEditingController? cod6TextController;
  String? Function(BuildContext, String?)? cod6TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    cod1FocusNode?.dispose();
    cod1TextController?.dispose();

    cod2FocusNode?.dispose();
    cod2TextController?.dispose();

    cod3FocusNode?.dispose();
    cod3TextController?.dispose();

    cod4FocusNode?.dispose();
    cod4TextController?.dispose();

    cod5FocusNode?.dispose();
    cod5TextController?.dispose();

    cod6FocusNode?.dispose();
    cod6TextController?.dispose();
  }
}
