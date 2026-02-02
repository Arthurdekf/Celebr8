import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_options_widget.dart' show FilterOptionsWidget;
import 'package:flutter/material.dart';

class FilterOptionsModel extends FlutterFlowModel<FilterOptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDownEstado widget.
  String? dropDownEstadoValue;
  FormFieldController<String>? dropDownEstadoValueController;
  // State field(s) for DropDownCidade widget.
  String? dropDownCidadeValue;
  FormFieldController<String>? dropDownCidadeValueController;
  // State field(s) for categoriaChoiceChips widget.
  FormFieldController<List<String>>? categoriaChoiceChipsValueController;
  List<String>? get categoriaChoiceChipsValues =>
      categoriaChoiceChipsValueController?.value;
  set categoriaChoiceChipsValues(List<String>? val) =>
      categoriaChoiceChipsValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
