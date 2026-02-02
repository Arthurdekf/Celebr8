import '/flutter_flow/flutter_flow_util.dart';
import 'edit_password_page_widget.dart' show EditPasswordPageWidget;
import 'package:flutter/material.dart';

class EditPasswordPageModel extends FlutterFlowModel<EditPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for senhaAtual widget.
  FocusNode? senhaAtualFocusNode;
  TextEditingController? senhaAtualTextController;
  late bool senhaAtualVisibility;
  String? Function(BuildContext, String?)? senhaAtualTextControllerValidator;
  String? _senhaAtualTextControllerValidator(
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

  // State field(s) for novaSenha widget.
  FocusNode? novaSenhaFocusNode;
  TextEditingController? novaSenhaTextController;
  late bool novaSenhaVisibility;
  String? Function(BuildContext, String?)? novaSenhaTextControllerValidator;
  // State field(s) for novaSenhaConfirm widget.
  FocusNode? novaSenhaConfirmFocusNode;
  TextEditingController? novaSenhaConfirmTextController;
  late bool novaSenhaConfirmVisibility;
  String? Function(BuildContext, String?)?
      novaSenhaConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaAtualVisibility = false;
    senhaAtualTextControllerValidator = _senhaAtualTextControllerValidator;
    novaSenhaVisibility = false;
    novaSenhaConfirmVisibility = false;
  }

  @override
  void dispose() {
    senhaAtualFocusNode?.dispose();
    senhaAtualTextController?.dispose();

    novaSenhaFocusNode?.dispose();
    novaSenhaTextController?.dispose();

    novaSenhaConfirmFocusNode?.dispose();
    novaSenhaConfirmTextController?.dispose();
  }
}
