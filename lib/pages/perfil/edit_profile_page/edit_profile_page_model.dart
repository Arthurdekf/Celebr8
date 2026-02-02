import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_page_widget.dart' show EditProfilePageWidget;
import 'package:flutter/material.dart';

class EditProfilePageModel extends FlutterFlowModel<EditProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadData5xn0 = false;
  FFUploadedFile uploadedLocalFile_uploadData5xn0 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for nomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  String? _nomeCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Você precisa informar seu nome';
    }

    if (val.length < 5) {
      return 'Nome inválido';
    }
    if (val.length > 45) {
      return 'Nome inválido';
    }

    return null;
  }

  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  String? _descricaoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Você precisa de uma pequena descrição sobre você';
    }

    if (val.length < 1) {
      return 'Preencha uma pequena descrição sobre você';
    }
    if (val.length > 150) {
      return 'Preencha uma pequena descrição sobre você';
    }

    return null;
  }

  // State field(s) for genero widget.
  String? generoValue;
  FormFieldController<String>? generoValueController;
  // State field(s) for categoriaChoiceChips widget.
  FormFieldController<List<String>>? categoriaChoiceChipsValueController;
  List<String>? get categoriaChoiceChipsValues =>
      categoriaChoiceChipsValueController?.value;
  set categoriaChoiceChipsValues(List<String>? val) =>
      categoriaChoiceChipsValueController?.value = val;
  bool isDataUploading_uploadData4xt = false;
  FFUploadedFile uploadedLocalFile_uploadData4xt =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData4xt = '';

  @override
  void initState(BuildContext context) {
    nomeCompletoTextControllerValidator = _nomeCompletoTextControllerValidator;
    descricaoTextControllerValidator = _descricaoTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();
  }
}
