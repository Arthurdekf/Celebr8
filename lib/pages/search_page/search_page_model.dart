import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  Local state fields for this page.
  /// Armazena o tipo de busca
  String searchOptionPageState = 'user';

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchBarUser widget.
  FocusNode? searchBarUserFocusNode;
  TextEditingController? searchBarUserTextController;
  String? Function(BuildContext, String?)? searchBarUserTextControllerValidator;
  List<UserRecord> simpleSearchResults1 = [];
  // State field(s) for searchBarEvento widget.
  FocusNode? searchBarEventoFocusNode;
  TextEditingController? searchBarEventoTextController;
  String? Function(BuildContext, String?)?
      searchBarEventoTextControllerValidator;
  List<EventosRecord> simpleSearchResults2 = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBarUserFocusNode?.dispose();
    searchBarUserTextController?.dispose();

    searchBarEventoFocusNode?.dispose();
    searchBarEventoTextController?.dispose();
  }
}
