import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPageModel extends FlutterFlowModel<RegisterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadData5xn5 = false;
  FFUploadedFile uploadedLocalFile_uploadData5xn5 =
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

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Preencha o endereço de E-mail';
    }

    if (val.length < 5) {
      return 'E-mail muito curto';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Formato de E-mail inválido';
    }
    return null;
  }

  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  String? _senhaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Você precisa informar uma senha';
    }

    return null;
  }

  // State field(s) for confirmaSenha widget.
  FocusNode? confirmaSenhaFocusNode;
  TextEditingController? confirmaSenhaTextController;
  late bool confirmaSenhaVisibility;
  String? Function(BuildContext, String?)? confirmaSenhaTextControllerValidator;
  String? _confirmaSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirme sua senha';
    }

    return null;
  }

  // State field(s) for genero widget.
  String? generoValue;
  FormFieldController<String>? generoValueController;
  DateTime? datePicked;
  // State field(s) for categoriaChoiceChips widget.
  FormFieldController<List<String>>? categoriaChoiceChipsValueController;
  List<String>? get categoriaChoiceChipsValues =>
      categoriaChoiceChipsValueController?.value;
  set categoriaChoiceChipsValues(List<String>? val) =>
      categoriaChoiceChipsValueController?.value = val;
  bool isDataUploading_uploadDataH41 = false;
  FFUploadedFile uploadedLocalFile_uploadDataH41 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataH41 = '';

  @override
  void initState(BuildContext context) {
    nomeCompletoTextControllerValidator = _nomeCompletoTextControllerValidator;
    descricaoTextControllerValidator = _descricaoTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    senhaVisibility = false;
    senhaTextControllerValidator = _senhaTextControllerValidator;
    confirmaSenhaVisibility = false;
    confirmaSenhaTextControllerValidator =
        _confirmaSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    confirmaSenhaFocusNode?.dispose();
    confirmaSenhaTextController?.dispose();
  }
}
