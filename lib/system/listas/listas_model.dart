import '/flutter_flow/flutter_flow_util.dart';
import 'listas_widget.dart' show ListasWidget;
import 'package:flutter/material.dart';

class ListasModel extends FlutterFlowModel<ListasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
