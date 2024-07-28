import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'prodt_list_widget.dart' show ProdtListWidget;
import 'package:flutter/material.dart';

class ProdtListModel extends FlutterFlowModel<ProdtListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  Map<ProductRecord, bool> checkboxValueMap = {};
  List<ProductRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
