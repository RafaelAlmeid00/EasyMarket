import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_widget.dart' show Auth2Widget;
import 'package:flutter/material.dart';

class Auth2Model extends FlutterFlowModel<Auth2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for senha2 widget.
  FocusNode? senha2FocusNode;
  TextEditingController? senha2TextController;
  late bool senha2Visibility;
  String? Function(BuildContext, String?)? senha2TextControllerValidator;
  // State field(s) for email1 widget.
  FocusNode? email1FocusNode;
  TextEditingController? email1TextController;
  String? Function(BuildContext, String?)? email1TextControllerValidator;
  // State field(s) for senha1 widget.
  FocusNode? senha1FocusNode;
  TextEditingController? senha1TextController;
  late bool senha1Visibility;
  String? Function(BuildContext, String?)? senha1TextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
    senha2Visibility = false;
    senha1Visibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    senha2FocusNode?.dispose();
    senha2TextController?.dispose();

    email1FocusNode?.dispose();
    email1TextController?.dispose();

    senha1FocusNode?.dispose();
    senha1TextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
