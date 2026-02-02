import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'event_register_page_widget.dart' show EventRegisterPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventRegisterPageModel extends FlutterFlowModel<EventRegisterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadDataU19 = false;
  FFUploadedFile uploadedLocalFile_uploadDataU19 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for tituloEvento widget.
  FocusNode? tituloEventoFocusNode;
  TextEditingController? tituloEventoTextController;
  String? Function(BuildContext, String?)? tituloEventoTextControllerValidator;
  String? _tituloEventoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencha o título do evento!';
    }

    return null;
  }

  // State field(s) for descricaoEvento widget.
  FocusNode? descricaoEventoFocusNode;
  TextEditingController? descricaoEventoTextController;
  String? Function(BuildContext, String?)?
      descricaoEventoTextControllerValidator;
  String? _descricaoEventoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencha a descrição do evento!';
    }

    return null;
  }

  // State field(s) for linkSwitch widget.
  bool? linkSwitchValue;
  // State field(s) for linkEvento widget.
  FocusNode? linkEventoFocusNode;
  TextEditingController? linkEventoTextController;
  String? Function(BuildContext, String?)? linkEventoTextControllerValidator;
  // State field(s) for precoEvento widget.
  FocusNode? precoEventoFocusNode;
  TextEditingController? precoEventoTextController;
  String? Function(BuildContext, String?)? precoEventoTextControllerValidator;
  // State field(s) for priceSwitch widget.
  bool? priceSwitchValue;
  DateTime? datePicked1;
  // State field(s) for fimEventoSwitch widget.
  bool? fimEventoSwitchValue;
  DateTime? datePicked2;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
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
  bool isDataUploading_uploadDataX4f8 = false;
  FFUploadedFile uploadedLocalFile_uploadDataX4f8 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataX4f8 = '';

  // Stores action output result for [Backend Call - Create Document] action in criarEvento widget.
  EventosRecord? evento;

  @override
  void initState(BuildContext context) {
    tituloEventoTextControllerValidator = _tituloEventoTextControllerValidator;
    descricaoEventoTextControllerValidator =
        _descricaoEventoTextControllerValidator;
  }

  @override
  void dispose() {
    tituloEventoFocusNode?.dispose();
    tituloEventoTextController?.dispose();

    descricaoEventoFocusNode?.dispose();
    descricaoEventoTextController?.dispose();

    linkEventoFocusNode?.dispose();
    linkEventoTextController?.dispose();

    precoEventoFocusNode?.dispose();
    precoEventoTextController?.dispose();
  }
}
