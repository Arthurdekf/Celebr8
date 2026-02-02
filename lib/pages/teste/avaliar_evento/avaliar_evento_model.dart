import '/flutter_flow/flutter_flow_util.dart';
import 'avaliar_evento_widget.dart' show AvaliarEventoWidget;
import 'package:flutter/material.dart';

class AvaliarEventoModel extends FlutterFlowModel<AvaliarEventoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
